import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  final String url;

  ImageItem(this.url);

  @override
  Widget build(BuildContext context) {
    String url =
        'https://s3-s1.retailcrm.tech/eu-central-1/retailcrm/instagram232-c98581bf7827ea276f8a00cdcb27b27a/product/5d63fb75dca88-efad2ddc14af4f52481429ea202g--materialy-dlya-tvorchestva-tkan-shifon-fioletovyj.jpg';

    return Container(
      width: 200,
      height: 250,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child:
              Image.network(url, width: 200, height: 250, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
