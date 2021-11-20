import 'package:flutter/cupertino.dart';
import 'package:untitled/data/animals.dart';

class AnimalProvider extends ChangeNotifier {
  var currentAnimalUrl = animals['dog']!;

  void setAnimal(animal) {
    currentAnimalUrl = animals[animal]!;
    notifyListeners();
  }
}
