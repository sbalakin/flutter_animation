import 'package:flutter/material.dart';
import 'package:hello_word/views/TopBar.dart';

import '../../AppConsts.dart';
import '../Cloth.dart';
import '../ClothesListItem.dart';

class ClothesDescriptionText extends StatelessWidget {
  final String title;

  ClothesDescriptionText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(AppConsts.GRAY_1),
                        fontFamily: 'UbuntuFont',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )));
  }
}
