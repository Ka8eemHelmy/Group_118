import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(InitialCounterState());

  static CounterCubit get (context) => BlocProvider.of<CounterCubit>(context);

  int counter = 0;

  void increment() {
    counter++;
    print(counter);
    emit(IncrementCounterState());
  }

  void subtract(){
    counter--;
    print(counter);
    emit(DecrementCounterState());
  }

  void reset() {
    counter = 0;
    emit(ResetCounterState());
  }

  List<String> inputs = [];

  TextEditingController inputController = TextEditingController();

  void addInput () {
    inputs.add(inputController.text);
    inputController.clear();
    emit(AddNewInputState());
  }
}