import 'package:block_cubbit/dj/service.dart';
import 'package:block_cubbit/features/home/data/model/dogs_model.dart';
import 'package:dio/dio.dart';


abstract interface class HomeLocalDataSource {
  Future<List<DogsModel>> getAllDataDog();
  Future<List<DogsModel>> searchAllDataDog(String name);
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  late List<DogsModel> dogList;

  @override
  Future<List<DogsModel>> getAllDataDog() async {
    final data = await service<Dio>().get('dogs?name=co');
      return (data.data as List).map((json) => DogsModel.fromJson(json)).toList();
  }

  @override
  Future<List<DogsModel>> searchAllDataDog(String name) async {
    try{
      final data = await service<Dio>().get('dogs?name=$name');
      return (data.data as List).map((json) => DogsModel.fromJson(json)).toList();
    }
    on DioException catch (e) {
      print(e.message);
      return [];
    }
  }
}
