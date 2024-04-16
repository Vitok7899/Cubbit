import 'package:block_cubbit/features/home/domain/entity/dogs_entity.dart';
import 'package:block_cubbit/features/home/domain/repository/home_repository.dart';

class HomeUseCase {
  final HomeRepository _repository;

  HomeUseCase(this._repository);

  Future<List<DogsEntity>> call() async {
    return _repository.getAllDataDogs();
  }

  Future<List<DogsEntity>> callSearch(String name) async {
    return _repository.searchAllDataDogs(name);
  }
}