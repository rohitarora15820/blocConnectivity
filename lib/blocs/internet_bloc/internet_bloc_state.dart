part of 'internet_bloc_bloc.dart';

@immutable
abstract class InternetBlocState {}

class InternetInitialState extends InternetBlocState {}

class InternetLostState extends InternetBlocState {}

class IntenetGainedState extends InternetBlocState {}
