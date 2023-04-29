import 'dart:async';
import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Account extends ChangeNotifier {
  Account() {}
  String totalFollower = "0";
  String formatFollower(int fol) {
    if (fol >= 1000 && fol < 1000000) {
      return '${(fol / 1000).toStringAsFixed(0)}k';
    } else if (fol >= 1000000) {
      return '${(fol / 1000000).toStringAsFixed(0)}m';
    } else {
      return '$fol';
    }
  }

  int fol = 0;
  void setFollower() {
    Timer.periodic(Duration(microseconds: 100), (timer) {
      fol += 3;
      totalFollower = formatFollower(fol);
      notifyListeners();
    });
  }

  List<Map> myFeed = [
    {"id": 1, "username": Faker().person.name()}
  ];

  void randomNotification() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      fol += Random().nextInt(279) + 3;
      myFeed.insert(0,
          {"id": Random().nextInt(25) + 1, "username": Faker().person.name()});
      notifyListeners();
    });
  }

  List<Map> getNotification() {
    return myFeed;
  }

  String getFollower() => totalFollower;
}
