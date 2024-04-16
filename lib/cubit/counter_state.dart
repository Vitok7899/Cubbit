part of 'counter_cubit.dart';

@immutable
sealed class CubitState{}

final class CubitInitial extends CubitState {}

class CubitLoaded extends CubitState {
  final List<DogsEntity> dogList;

  CubitLoaded(this.dogList);

  @override
  bool operator == (Object other) => 
    identical(this, other) ||
    other is CubitLoaded &&
        runtimeType == other.runtimeType &&
        dogList == other.dogList;

  @override
  int get hashCode => dogList.hashCode;
}
