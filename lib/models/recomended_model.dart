import 'package:flutter/material.dart';

class RecomendedModel {
  String name;
  String iconPath;
  Color boxColor;

  RecomendedModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<RecomendedModel> getRecomended() {
    List<RecomendedModel> recomended = [];

    recomended.add(
      RecomendedModel(
        name: 'Ghost 1',
        iconPath: 'assets/icons/ghost1.svg',
        boxColor: Color.fromARGB(255, 153, 207, 205),
      ),
    );

    recomended.add(
      RecomendedModel(
        name: 'Ghost 2',
        iconPath: 'assets/icons/ghost2.svg',
        boxColor: Color.fromARGB(255, 207, 153, 205),
      ),
    );

    recomended.add(
      RecomendedModel(
        name: 'Ghost 3',
        iconPath: 'assets/icons/ghost3.svg',
        boxColor: Color.fromARGB(255, 153, 207, 205),
      ),
    );

    recomended.add(
      RecomendedModel(
        name: 'Ghost 4',
        iconPath: 'assets/icons/ghost4.svg',
        boxColor: Color.fromARGB(255, 207, 153, 205),
      ),
    );

    recomended.add(
      RecomendedModel(
        name: 'Ghost 5',
        iconPath: 'assets/icons/ghost5.svg',
        boxColor: Color.fromARGB(255, 153, 207, 205),
      ),
    );

    recomended.add(
      RecomendedModel(
        name: 'Ghost 6',
        iconPath: 'assets/icons/ghost6.svg',
        boxColor: Color.fromARGB(255, 207, 153, 205),
      ),
    );

    recomended.add(
      RecomendedModel(
        name: 'Ghost 7',
        iconPath: 'assets/icons/ghost7.svg',
        boxColor: Color.fromARGB(255, 153, 207, 205),
      ),
    );

    recomended.add(
      RecomendedModel(
        name: 'Ghost 8',
        iconPath: 'assets/icons/ghost8.svg',
        boxColor: Color.fromARGB(255, 207, 153, 205),
      ),
    );

    return recomended;
  }
}
