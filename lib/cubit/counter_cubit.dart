import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterChanged(counter: 0));
  
  void  onClick() {
    emit(CounterChanged(counter: state.counter + 1));
    if (state.counter == 10){
      emit(Finished('Лимит превышен !!! \n Счетчик равен ${state.counter}'));
    }
  }
}
