import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // constructor del CounterBloc, inicializa el estado (CounterState)
  CounterBloc() : super(const CounterState()) {
    // on (cuando se dispara el evento (CounterIncreased) ejecuta el handler)
    on<CounterIncreased>(_onCounterIncreased);
  }

  void _onCounterIncreased(CounterIncreased event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      counter: state.counter + event.valueIncreased,
      transactionCount: state.transactionCount + 1,
    ));
  }
}
