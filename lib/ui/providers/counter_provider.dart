import 'package:deneme_provider/data/repo/counter_repository.dart';
import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
  int get getCounter => _counter;

  var counterRepo = CounterRepository();

  void incrementCounter() async {
    _counter = await counterRepo.incrementCounter(_counter);
    notifyListeners();
  }

  void decrementCounter() async {
    _counter = await counterRepo.decrementCounter(_counter);
    notifyListeners();
  }
}
