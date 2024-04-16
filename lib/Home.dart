import 'package:block_cubbit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().onClick,
        child: const Text('+'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return switch (state) {
              Finished() => Text("${state.counter})"),
              CounterChanged() => Text("${state.counter}")
            };
          },
        )
      ),
    );
  }
}
