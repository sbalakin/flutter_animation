import 'package:flutter/material.dart';

import '../AppConsts.dart';

class TopBar extends StatelessWidget {
  final String text;

  TopBar(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      child: new Container(
        decoration: new BoxDecoration(
            color: Color(AppConsts.MAIN_YELLOW),
            borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(40.0),
                bottomRight: const Radius.circular(40.0))),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.chevron_left,
                  color: Color(0xff70926a),
                  size: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: new Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontFamily: 'UbuntuFont',
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
