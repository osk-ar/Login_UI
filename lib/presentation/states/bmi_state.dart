import 'package:equatable/equatable.dart';

abstract class BMIState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BMIInitial extends BMIState {}

class BMIGenderChanged extends BMIState {
  final bool isMaleSelected;

  BMIGenderChanged(this.isMaleSelected);

  @override
  List<Object?> get props => [isMaleSelected];
}

class BMIHeightChanged extends BMIState {
  final double height;

  BMIHeightChanged(this.height);

  @override
  List<Object?> get props => [height];
}

class BMIWeightChanged extends BMIState {
  final int weight;

  BMIWeightChanged(this.weight);

  @override
  List<Object?> get props => [weight];
}

class BMIAgeChanged extends BMIState {
  final int age;

  BMIAgeChanged(this.age);

  @override
  List<Object?> get props => [age];
}
