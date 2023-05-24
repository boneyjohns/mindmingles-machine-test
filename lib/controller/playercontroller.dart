import 'dart:developer';

import 'package:get/get.dart';

class Playercontroller extends GetxController {
  var players = [].obs;

  addplayer(String name) {
    players.add(name);
    log("$name is added");
  }
}
