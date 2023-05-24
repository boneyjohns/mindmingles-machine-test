import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_mingles/const/colors.dart';
import 'package:mind_mingles/controller/playercontroller.dart';

class PlayerName extends StatelessWidget {
  PlayerName({super.key, required this.name, required this.index});
  final String name;
  final int index;
  final playercontroller = Get.put(Playercontroller());
  @override
  Widget build(BuildContext context) {
    return Card(
      color: korange,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              IconButton(
                  onPressed: () {
                    playercontroller.players.removeAt(index);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black38,
                  ))
            ],
          )),
    );
  }
}
