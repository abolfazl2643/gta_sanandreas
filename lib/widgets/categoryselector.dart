import 'package:flutter/material.dart';
import 'package:gta_sanandreas/widgets/categorybox.dart';

class Categories extends StatelessWidget {
  final String images;
  Categories({this.images});
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 6,top: 6),
      child: Container(
        width: mq.width / 1.1,
        child: Column(

          children: [
            Row(children: [Flexible(
              flex: 1,
              child: Categoriybox(
                  categoryname: 'Cheats',
                  warning: true,
                  bottomright: 0.0,
                  bottomleft: 0,
                  topleft: 0,
                  topright: 0,
                  imagesBox:
                  'images/boxes/1269987.jpg'),
            ),
              SizedBox(width: 6,),
              Flexible(
                flex: 1,
                child: Categoriybox(
                    categoryname: 'Hidden Places',
                    warning: false,
                    bottomright: 0,
                    bottomleft: 0,
                    topleft: 0,
                    topright: 0,
                    imagesBox: 'images/boxes/gta-san-andreas-02.jpg'),
              ),],),
              SizedBox(height: 6,),
              Row(children: [Flexible(
                flex: 1,
                child: Categoriybox(
                    categoryname: 'Maps',
                    warning: true,
                    bottomright: 0,
                    bottomleft: 0,
                    topleft: 0,
                    topright: 0,
                    imagesBox: 'images/boxes/gta_san_andreas.png'),
              ),
                SizedBox(width: 6,),

                Flexible(
                  flex: 1,
                  child: Categoriybox(
                      categoryname: 'Vehicles',
                      warning: false,
                      bottomright: 0,
                      bottomleft: 0,
                      topleft: 0,
                      topright: 0,
                      imagesBox: 'images/boxes/gta-san-andreas-artwork-img.jpg'),
                ),],)

          ],
        ),
      ),
    );
  }
}
