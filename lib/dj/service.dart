import 'package:block_cubbit/core/interceptor_app.dart';
import 'package:block_cubbit/cubit/counter_cubit.dart';
import 'package:block_cubbit/features/home/data/data_source/home_local_data_source.dart';
import 'package:block_cubbit/features/home/data/repository/home_repository_impl.dart';
import 'package:block_cubbit/features/home/domain/repository/home_repository.dart';
import 'package:block_cubbit/features/home/domain/use_case/home_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final service = GetIt.instance;

Future<void> initDJ() async {
  // StateManagment -> Provider Cubit Bloc GetX

  service.registerFactory(() => CounterCubit(service()));

  service.registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl());
  service.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(dataSource: service()));
      
  service.registerLazySingleton(() => HomeUseCase(service<HomeRepository>()));

  service.registerLazySingleton(() => Dio(
        BaseOptions(
          headers: {"X-Api-Key": "9JWDSI1F2H0wd81ntetetw==ESNdDXx92sLyOc6f"},
          baseUrl: 'https://api.api-ninjas.com/v1/',
        ),
      )..interceptors.addAll(
          [
            InterceptorsApp(),
            PrettyDioLogger(),
          ],
        ));
}