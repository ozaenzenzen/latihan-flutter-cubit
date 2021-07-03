// import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'countercubit_state.dart';

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