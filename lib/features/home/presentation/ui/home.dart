import 'package:block_cubbit/cubit/counter_cubit.dart';
import 'package:block_cubbit/dj/service.dart';
import 'package:block_cubbit/features/home/domain/entity/dogs_entity.dart';
import 'package:block_cubbit/features/home/presentation/ui/byName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => service<CounterCubit>()..init(),
      child: _Home()
    );
  }
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _search = TextEditingController();
    List<DogsEntity> dogEntity = context.watch<CounterCubit>().dogList;
    return Scaffold(
      body: SafeArea(child:
      Column(
        children: [
          TextField(
            controller: _search,
            decoration: InputDecoration(
              labelText: 'Поиск по имени',
            ),
          ),
          SizedBox(height: 5,),
          ElevatedButton(
            onPressed: () {
              context.read<CounterCubit>().initSearch(_search.text);
            },
            child: Text('Найти'),
          ),
          SizedBox(height: 5,),
          ElevatedButton(
            onPressed: () {
              context.read<CounterCubit>().init();
            },
            child: Text('Вернуть'),
          ),
          SizedBox(height: 5,),
          Expanded(
            child: ListView.builder(
              itemCount: context.watch<CounterCubit>().dogList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(context.watch<CounterCubit>().dogList[index].name),
                        subtitle: Text(
                            "${context.watch<CounterCubit>().dogList[index].min_max_life_expectancy}"),
                      ),
                      ElevatedButton(
                          onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ByName(dogs: dogEntity[index]),
                              ),
                            );
                          },
                        child: Text('Подробнее')
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      )
    );
  }
}

