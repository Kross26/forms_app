part of 'counter_bloc.dart';

// define todos los eventos que va a esperar el bloc para trabajar
abstract class CounterEvent {
  const CounterEvent();
}

// evento CounterIncreased que aumenta el value
class CounterIncreased extends CounterEvent {
  final int value;
  const CounterIncreased(this.value);
}

class CounterReset extends CounterEvent {}
