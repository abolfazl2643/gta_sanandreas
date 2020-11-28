import 'package:flutter/material.dart';
import 'package:gta_sanandreas/widgets/characters.dart';

class Bioprovider with ChangeNotifier {
  String _bio = gtacharacterslist[0].bio;

  String get bio => _bio;

  updatebio(String newbio) {
    _bio = newbio;
    notifyListeners();
  }
}
