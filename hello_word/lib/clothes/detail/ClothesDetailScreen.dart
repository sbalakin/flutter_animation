import 'package:flutter/material.dart';
import 'package:hello_word/views/TopBar.dart';

import '../../AppConsts.dart';
import '../Cloth.dart';
import '../ClothesListItem.dart';
import 'ClothesDescriptionText.dart';
import 'ClothesDescriptionTextPair.dart';
import 'ClothesPhotoList.dart';

class ClothesDetailScreen extends StatelessWidget {
  final Cloth cloth;

  ClothesDetailScreen(this.cloth);

  itemClick() {}

  var data = [
    new Cloth("wdw", "wedwedwe", false),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true),
    new Cloth("wdw", "wedwedwe", true)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBar(AppConsts.CLOTH_DETAIL),
        new Column(
          children: <Widget>[
            ClothesDescriptionText('ФОТО:'),
            ClothesPhotoList(),
            ClothesDescriptionTextPair('АРТИКУЛ:', '121212'),
            ClothesDescriptionTextPair('ДЛИНА:', '121212'),
            ClothesDescriptionTextPair('ШИРИНА:', '121212'),
            ClothesDescriptionTextPair('ЦЕНА:', '121212'),
            ClothesDescriptionText('ОПИСАНИЕ:'),
          ],
        ),
      ],
    );
  }
}
