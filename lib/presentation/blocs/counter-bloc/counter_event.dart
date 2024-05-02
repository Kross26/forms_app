part of 'counter_bloc.dart';

// define todos los eventos que va a esperar el bloc para trabajar
sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

// evento CounterIncreased que aumenta el value
class CounterIncreased extends CounterEvent {
  final int valueIncreased;
  const CounterIncreased({required this.valueIncreased});
}
