import 'package:flutter/material.dart';
//Provider example
// class Person {
//   String name;
//   int age;

//   Person({required this.name, required this.age});
// }

// class Person extends ChangeNotifier {
//   String name;
//   int age;

//   Person({required this.age, required this.name});

//   void addValue() {
//     age++;
//     notifyListeners();
//   }
// }

// class Home {
//   final string = "Jamshedpur";
//   Future<String> get fetchAddress {
//     final address = Future.delayed(Duration(seconds: 3), () {
//       return "h.no 3945, kagalnagar";
//     });
//     return address;
//   }
// }

//StramProvider with context extension
class Person with ChangeNotifier {
  Person({required this.name, required this.age});

  String name;
  int age;

  void addValue() {
    age++;
    notifyListeners();
  }

  void changeName() {
    name = "Gary";
    notifyListeners();
  }
}

class Countdown {
  static Stream<String> start() async* {
    var i = 10;
    while (i > 0) {
      await Future.delayed(const Duration(seconds: 1), () {
        i--;
      });
      yield i.toString();
    }

    yield "KB00m!!!";
  }
}
