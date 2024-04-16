import 'package:block_cubbit/cubit/counter_cubit.dart';
import 'package:block_cubbit/dj/service.dart';
import 'package:block_cubbit/features/home/presentation/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => service<CounterCubit>()..init(),
        child: const Home(),
      ),
    );
  }
}
