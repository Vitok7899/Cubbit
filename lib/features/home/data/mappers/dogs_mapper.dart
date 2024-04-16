import 'package:block_cubbit/features/home/data/model/dogs_model.dart';
import 'package:block_cubbit/features/home/domain/entity/dogs_entity.dart';

extension DogsMapper on DogsModel {
  DogsEntity toEntity() {
    return DogsEntity(
      name: name,
      min_life_expectancy: min_life_expectancy,
      max_life_expectancy: max_life_expectancy,
      //shedding: shedding,
      //trainability: trainability,
      image_link: image_link,
      //max_height_female: max_height_female,
      min_max_life_expectancy: 'Продолжительность жизни: $min_life_expectancy лет - $max_life_expectancy лет',
    );
  }
}