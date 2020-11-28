import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gta_sanandreas/bloc/biobloc_bloc.dart';
import 'package:gta_sanandreas/statemanagment/provider.dart';
import 'package:provider/provider.dart';
import 'package:bloc/bloc.dart';

class Biobox extends StatefulWidget {
  @override
  _BioboxState createState() => _BioboxState();
}

class _BioboxState extends State<Biobox> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _intancebloc = BlocProvider.of<BioblocBloc>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Container(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: BlocBuilder<BioblocBloc, BioblocState>(
                builder: (BuildContext context, BioblocState state) {
                  if (state is BioblocInitial) {
                    return Text(state.biostate.toString());
                  } else if (state is BioLoading) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  } else if (state is BiocurrentState) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(state.gtabio,
                          style: TextStyle(
                              fontFamily: 'quite',
                              fontSize: 20,
                              color: Colors.black)),
                    );
                  }
                },
              )),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'images/boxes/maxresdefault.jpg',
              ),
            ),
            color: Colors.yellow,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15))),
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 3,
      ),
    );
  }
}
