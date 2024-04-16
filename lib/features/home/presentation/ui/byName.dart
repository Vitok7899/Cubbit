import 'package:block_cubbit/features/home/domain/entity/dogs_entity.dart';
import 'package:block_cubbit/features/home/presentation/ui/home.dart';
import 'package:flutter/material.dart';

class ByName extends StatelessWidget {
  final DogsEntity dogs;

  const ByName({super.key, required this.dogs});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              dogs.name,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Image.network(
              dogs.image_link,
              width: 400,
            ),
            Text(
              dogs.min_max_life_expectancy,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
            // Text(
            //   dogs.max_height_female as String ,
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.normal,
            //     color: Colors.black,
            //   ),
            //   textAlign: TextAlign.left,
            // ),
            // Text(
            //   dogs.shedding as String,
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.normal,
            //     color: Colors.black,
            //   ),
            //   textAlign: TextAlign.left,
            // ),
            // Text(
            //   dogs.trainability,
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.normal,
            //     color: Colors.black,
            //   ),
            //   textAlign: TextAlign.left,
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: Text('Назад'),
            ),
          ],
        ),
      ),
    );
  }
}