part of 'action_cubit.dart';

@immutable
abstract class CountercubitState {}

class CountercubitInitial extends CountercubitState {}

class CountercubitstateFilled extends CountercubitState{
  final int value;

  CountercubitstateFilled(this.value);
}