import 'package:flutter/material.dart';

class Categoriybox extends StatelessWidget {
  final String imagesBox;
  final double topleft;
  final double topright;
  final double bottomright;
  final double bottomleft;
  final bool warning;
  final String categoryname;

  Categoriybox(
      {this.imagesBox,
      this.topleft,
      this.topright,
      this.bottomright,
      this.bottomleft,
      this.warning,
      this.categoryname});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/9,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage(imagesBox)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topleft),
                  bottomLeft: Radius.circular(bottomleft),
                  bottomRight: Radius.circular(bottomright),
                  topRight: Radius.circular(topright))),
        ),

        warning
            ? Align(
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.yellow,
                  child: Center(
                      child: Text(
                    'New',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  height: 15,
                  width: 50,
                ))
            : Align(
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.deepPurpleAccent,
                  child: Center(
                      child: Text(
                    'Demo',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  height: 15,
                  width: 50,
                )),
        Align(
          heightFactor: 4.3,
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Center(child: Text(categoryname,style: TextStyle(fontWeight: FontWeight.bold),)),
            height: 15,
            color: Colors.pink.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
