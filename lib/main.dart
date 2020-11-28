import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gta_sanandreas/screens/home.dart';
import 'package:gta_sanandreas/statemanagment/provider.dart';
import 'package:provider/provider.dart';

import 'bloc/biobloc_bloc.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Bioprovider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColorDark: Colors.black),
      home: BlocProvider(create: (context) => BioblocBloc(), child: Homepage()),
    );
  }
}
