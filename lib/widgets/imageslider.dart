import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'images/boxes/gta-san-andreas-artwork-img.jpg',
  'images/boxes/1269987.jpg',
  'images/boxes/gta-san-andreas-art_1000.0.jpg'
];

class ImageSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
        width: mq.width / 1.1,
        height: MediaQuery.of(context).size.height/7,
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight:Radius.circular(15) ,topLeft: Radius.circular(15)),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 500),
            ),
            items: imgList
                .map((item) => Image.asset(item, fit: BoxFit.cover,width: 300,))
                .toList(),
          ),
        ));
  }
}
