import 'package:flutter/material.dart';
import 'package:hello_word/AppConsts.dart';

import 'Cloth.dart';

class ClothesListItem extends StatefulWidget {
  final Function function;
  final Cloth cloth;

  ClothesListItem(this.function, this.cloth);

  @override
  State<StatefulWidget> createState() {
    return ClothesListItemState(cloth);
  }
}

class ClothesListItemState extends State<ClothesListItem>
    with SingleTickerProviderStateMixin {
  final Cloth cloth;

  ClothesListItemState(this.cloth);

  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  String img =
      'https://s3-s1.retailcrm.tech/eu-central-1/retailcrm/instagram232-c98581bf7827ea276f8a00cdcb27b27a/product/5d63fb75dca88-efad2ddc14af4f52481429ea202g--materialy-dlya-tvorchestva-tkan-shifon-fioletovyj.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              child: Image.network(img,
                  width: double.infinity, fit: BoxFit.fitWidth),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 10),
                    child: SlideTransition(
                      position: _offsetAnimation,
                      child: Text(
                        cloth.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'UbuntuFont'),
                      ),
                    ))),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 10),
                child: cloth.isSelected
                    ? FloatingActionButton(
                        backgroundColor: Color(AppConsts.MAIN_GREEN),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            cloth.isSelected = !cloth.isSelected;
                          });
                        },
                      )
                    : FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.done,
                          color: Color(AppConsts.MAIN_GREEN),
                        ),
                        onPressed: () {
                          setState(() {
                            cloth.isSelected = !cloth.isSelected;
                          });
                        },
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
