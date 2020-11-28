import 'package:flutter/material.dart';
import 'package:gta_sanandreas/widgets/biobox.dart';
import '../widgets/categoryselector.dart';
import 'package:gta_sanandreas/widgets/characters.dart';
import 'package:gta_sanandreas/widgets/imageslider.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                children: [
                  ImageSliderDemo(),
                  Categories(),
                  CharactersListView(),
                  Expanded(child: Biobox()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
