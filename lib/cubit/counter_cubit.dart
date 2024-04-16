import 'package:bloc/bloc.dart';
import 'package:block_cubbit/features/home/domain/entity/dogs_entity.dart';
import 'package:block_cubbit/features/home/domain/use_case/home_use_case.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CubitState> {
  final HomeUseCase useCase;
  List<DogsEntity> dogList = [];

  CounterCubit(this.useCase) : super(CubitInitial());

  void init() async {
    try{
      dogList = await useCase.call();
      emit(CubitLoaded(dogList));
    } catch (e){}
  }

  void initSearch(String name) async {
    try{
      dogList = await useCase.callSearch(name);
      emit(CubitLoaded(dogList));
    }catch (e) {}
  }
}
