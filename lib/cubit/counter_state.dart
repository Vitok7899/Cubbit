part of 'counter_cubit.dart';

@immutable
sealed class CounterState {
  final int counter;

  const CounterState({required this.counter});
}

final class CounterChanged extends CounterState {
  const CounterChanged({required super.counter});
}

final class Finished extends CounterState {
  final String message;
  const Finished(this.message): super(counter: 0);
}
