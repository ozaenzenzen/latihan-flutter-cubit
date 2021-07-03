// import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'action_state.dart';

// class CountercubitCubit extends Cubit{
// class CountercubitCubit extends Cubit<CountercubitState> {
//   // CountercubitCubit() : super(0);
//   CountercubitCubit() : super(CountercubitInitial());

//   void cubitIncrement(int value) {
//     emit((state is CountercubitstateFilled)
//         ? (state as CountercubitstateFilled).value + value
//         : CountercubitstateFilled(0));
//   }

//   // void increment() => emit(state + 1);
//   // void decrement() => emit(state - 1);
// }

class CountercubitCubit extends Cubit<int> {
  CountercubitCubit() : super(0);
  // CountercubitCubit() : super(CountercubitInitial());
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

enum SelectedColor { c_blue, c_red, c_green, c_pink }

class ColorCubit extends Cubit<ColorSwatch> {
  ColorCubit() : super(Colors.pink);

  void changeColor(state) {
    if (state == Colors.pink) {
      emit(state = Colors.pink);
    } else if (state == Colors.blue) {
      emit(state = Colors.blue);
    } else if (state == Colors.red) {
      emit(state = Colors.red);
    } else {
      emit(state = Colors.green);
    }
  }
}
