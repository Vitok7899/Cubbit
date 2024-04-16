import 'package:block_cubbit/features/home/domain/entity/dogs_entity.dart';
abstract interface class HomeRepository{

  Future<List<DogsEntity>> getAllDataDogs();

  Future<List<DogsEntity>> searchAllDataDogs(String name);
}