import 'package:flutter/material.dart';

class BestModel {
  String name;
  String iconPath;
  Color boxColor;

  BestModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<BestModel> getBest() {
    List<BestModel> best = [];

    best.add(
      BestModel(
        name: 'Dracula',
        iconPath: 'assets/icons/Dracula.svg',
        boxColor: Color.fromARGB(255, 153, 207, 205),
      ),
    );
    best.add(
      BestModel(
        name: 'Mummy',
        iconPath: 'assets/icons/Mummy.svg',
        boxColor: Color.fromARGB(255, 153, 207, 205),
      ),
    );
    best.add(
      BestModel(
        name: 'Frank',
        iconPath: 'assets/icons/Frank.svg',
        boxColor: Color.fromARGB(255, 153, 207, 205),
      ),
    );
    best.add(
      BestModel(
        name: 'Werewolf',
        iconPath: 'assets/icons/Werewolf.svg',
        boxColor: Color.fromARGB(255, 153, 207, 205),
      ),
    );
    return best;
  }
}
