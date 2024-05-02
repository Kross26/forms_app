part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  final int transactionCount;
// estado que preserva el valor del contador y cambios que ha tenido
  const CounterState({
    this.counter = 10, //
    this.transactionCount = 0, //
  });

  CounterState copyWith({
    int? counter,
    int? transactionCount,
  }) =>
      CounterState(
        // va a hacer el mismo valor pero si no viene va a hacer el mismo valor de la instancia
        counter: counter ?? this.counter,
        transactionCount: transactionCount ?? this.transactionCount,
      );

  @override
  List<Object> get props => [counter, transactionCount];
}
