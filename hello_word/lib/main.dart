import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AppConsts.dart';
import 'clothes/ClothesListView.dart';

//void main() => runApp(MyApp());

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(AppConsts.MAIN_GREEN),
      // navigation bar color
      statusBarColor: Color(AppConsts.MAIN_YELLOW),
      // status bar color
      statusBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String text = 'Hello';

  void clickMethod() {
    print('scscsdsc');
    setState(() {
      text = 'Second';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ClothesListView(clickMethod))
    );
  }
}
