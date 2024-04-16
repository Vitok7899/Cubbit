import 'package:block_cubbit/cubit/counter_cubit.dart';
import 'package:block_cubbit/dj/service.dart';
import 'package:block_cubbit/features/home/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDJ();
  runApp(const App());
}
