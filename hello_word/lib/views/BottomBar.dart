import 'package:flutter/material.dart';

import '../AppConsts.dart';

class BottomBar extends StatelessWidget {
  BottomBar();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 115,
        child: Row(children: <Widget>[
          Expanded(
            child: Container(
              height: 115,
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () => print("Container pressed"),
                // handle your onTap here
                child: new Text(
                  'ccwewcewcw',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontFamily: 'UbuntuFont',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ),
          ),Expanded(
            child: Container(
              height: 115,
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () => print("Container pressed"),
                // handle your onTap here
                child: Text("Approve", style: TextStyle(),),
              ),
            ),
            ),
          ),
        ]));
  }
}
