part of 'biobloc_bloc.dart';

abstract class BioblocEvent extends Equatable {
  const BioblocEvent();

  @override
  List<Object> get props => [];
}

class ChangeBioEvent extends BioblocEvent {
  final String personBio;
  const ChangeBioEvent({this.personBio});
  @override
  List<Object> get props => [personBio];
}
