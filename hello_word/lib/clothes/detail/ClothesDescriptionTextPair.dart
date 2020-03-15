import 'package:flutter/material.dart';
import 'package:hello_word/views/TopBar.dart';

import '../../AppConsts.dart';
import '../Cloth.dart';
import '../ClothesListItem.dart';

class ClothesDescriptionTextPair extends StatelessWidget {
  final String title;
  final String value;

  ClothesDescriptionTextPair(this.title, this.value);

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
                ),
                Container(
                  width: 100,
                  child: Text(
                    value,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(AppConsts.BLACK_1),
                        fontFamily: 'UbuntuFont',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )));
  }
}
