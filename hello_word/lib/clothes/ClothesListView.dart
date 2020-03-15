import 'package:flutter/material.dart';
import 'package:hello_word/AppConsts.dart';
import 'package:hello_word/views/TopBar.dart';

import 'Cloth.dart';
import 'ClothesListItem.dart';

class ClothesListView extends StatelessWidget {
  final Function function;

  ClothesListView(this.function);

  itemClick() {}

  var data = [
    new Cloth("wdw", "wedwedwe", false),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBar(AppConsts.CLOTH_LIST),
        new Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return ClothesListItem(itemClick, data[index]);
              }),
        )
      ],
    );
  }
}
