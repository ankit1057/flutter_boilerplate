part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  final String value;

  CounterState(this.value);
}

class CounterInitial extends CounterState {
  final String value;

  CounterInitial(this.value) : super(value);
}

class CountByTwo extends CounterState {
  final String value;

  CountByTwo(this.value) : super(value);
}

class CountByFour extends CounterState {
  final String value;

  CountByFour(this.value) : super(value);
}
