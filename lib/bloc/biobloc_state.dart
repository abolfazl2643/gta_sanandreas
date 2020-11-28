part of 'biobloc_bloc.dart';

abstract class BioblocState extends Equatable {
  const BioblocState();

  @override
  List<Object> get props => [];
}

class BioblocInitial extends BioblocState {
  String biostate = '';
}

class BioLoading extends BioblocState {
  final Function progressbar;

  BioLoading({this.progressbar});
  @override
  List<Object> get props => [];
}

class BiocurrentState extends BioblocState {
  final String gtabio;

  BiocurrentState({this.gtabio});
  @override
  List<Object> get props => [gtabio];
}
