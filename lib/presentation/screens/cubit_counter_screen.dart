import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidht = MediaQuery.of(context).size.width;
    double screenHeidht = MediaQuery.of(context).size.height;
    return BlocProvider(
        create: (_) => CounterCubit(),
        child: _CubirCounterView(screenHeidht: screenHeidht));
  }
}

class _CubirCounterView extends StatelessWidget {
  const _CubirCounterView({
    required this.screenHeidht,
  });

  final double screenHeidht;

  void increaseCounterBy(BuildContext context, [int value = 1]) {
    context.read<CounterCubit>().increaseBy(value);
  }

  @override
  Widget build(BuildContext context) {
    // final counterState = context.watch<CounterCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterCubit value) {
          return Text('Cubit Counter : ${value.state.transactionCount}');
        }),
        actions: [
          IconButton(
              onPressed: () {
                context.read<CounterCubit>().reset(0);
              },
              icon: const Icon(Icons.refresh_outlined)),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          // buildWhen: (previous, current) => current.counter != previous.counter,
          builder: (context, state) {
            print('Counter cambió');
            return Text('Counter value: ${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Text('+3'),
            onPressed: () {
              increaseCounterBy(context, 3);
            },
          ),
          SizedBox(
            height: screenHeidht * 0.015,
          ),
          FloatingActionButton(
            heroTag: '2',
            child: const Text('+2'),
            onPressed: () {
              increaseCounterBy(context, 2);
            },
          ),
          SizedBox(
            height: screenHeidht * 0.015,
          ),
          FloatingActionButton(
            heroTag: '3',
            child: const Text('+1'),
            onPressed: () {
              increaseCounterBy(
                context,
              );
            },
          ),
        ],
      ),
    );
  }
}
