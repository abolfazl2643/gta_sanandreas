import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'biobloc_event.dart';
part 'biobloc_state.dart';

class BioblocBloc extends Bloc<BioblocEvent, BioblocState> {
  BioblocBloc() : super(BioblocInitial());

  @override
  BioblocState get initialState => BioblocInitial();

  @override
  Stream<BioblocState> mapEventToState(
    BioblocEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is ChangeBioEvent) {
      yield BioLoading();
      try {
        var personbioForcerrent =
            await Future.delayed(Duration(milliseconds: 300), () => event.personBio);
        yield BiocurrentState(gtabio: personbioForcerrent.toString());
      } catch (e) {
        print(e);
      }
    } else if (event is BioblocInitial) {
      yield BioblocInitial();
    }
  }
}
