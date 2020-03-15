import 'package:flutter/material.dart';
import 'package:hello_word/AppConsts.dart';
import 'package:hello_word/clothes/detail/ImageItem.dart';
import 'package:hello_word/views/TopBar.dart';

import '../Cloth.dart';

class ClothesPhotoList extends StatelessWidget {
  ClothesPhotoList();

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
    return Container(
        height: 250,
        child: new ListView.builder(
            padding: const EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ImageItem(data[index].imageUrl);
            }));
  }
}
