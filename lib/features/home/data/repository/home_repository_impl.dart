import 'package:block_cubbit/features/home/data/data_source/home_local_data_source.dart';
import 'package:block_cubbit/features/home/data/mappers/dogs_mapper.dart';
import 'package:block_cubbit/features/home/domain/entity/dogs_entity.dart';
import 'package:block_cubbit/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository{
final  HomeLocalDataSource dataSource;
  HomeRepositoryImpl({required this.dataSource});
  @override
  Future<List<DogsEntity>> getAllDataDogs() async{
    final data = await dataSource.getAllDataDog();
    return data.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<DogsEntity>> searchAllDataDogs(String name) async{
    final data = await dataSource.searchAllDataDog(name);
    return data.map((e) => e.toEntity()).toList();
  }
}