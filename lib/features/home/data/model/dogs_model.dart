class DogsModel {
  final String name;
  final double min_life_expectancy;
  final double max_life_expectancy;
  //final int shedding;
  //final String trainability;
  final String image_link;
  //final int max_height_female;

  DogsModel({
    required this.name,
    required this.min_life_expectancy,
    required this.max_life_expectancy,
    //required this.shedding,
    //required this.trainability,
    required this.image_link,
    //required this.max_height_female,
  });

  factory DogsModel.fromJson(Map<String, dynamic> json) {
    return DogsModel(
      name: json['name'],
      min_life_expectancy: json['min_life_expectancy'],
      max_life_expectancy: json['max_life_expectancy'],
      //shedding: json['shedding'],
      //trainability: json['trainability'],
      image_link: json['image_link'],
      //max_height_female: json['max_height_female']
    );
  }
}