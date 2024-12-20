import 'package:equatable/equatable.dart';

class CalcStates extends Equatable {
  @override
  List<Object?> get props => [];
}

class CalcInitial extends CalcStates {}

class CalcResultChanged extends CalcStates {
  CalcResultChanged({required this.result});
  final String result;

  @override
  List<Object?> get props => [result];
}
