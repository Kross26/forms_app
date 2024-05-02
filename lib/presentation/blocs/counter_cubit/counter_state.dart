part of 'counter_cubit.dart';

// Ejemplo
// String name= 'Diego'
// String otroNombre = 'Diego'
// CounterState(0,0) == CounterState(0,0) /// true

class CounterState extends Equatable {
  final int counter;
  final int transactionCount;

  const CounterState({
    required this.counter,
    required this.transactionCount,
  });

  copyWith({
    int? counter,
    int? transactionCount,
  }) =>
      CounterState(
        counter: counter ?? this.counter,
        transactionCount: transactionCount ?? this.transactionCount,
      );

  @override
  List<Object> get props => [counter, transactionCount];
}
