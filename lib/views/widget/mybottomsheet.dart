import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_mingles/const/colors.dart';
import 'package:mind_mingles/controller/playercontroller.dart';
import 'package:mind_mingles/views/widget/mybutton.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({
    super.key,
    required this.namecontroller,
    required this.playercontroller,
  });

  final TextEditingController namecontroller;
  final Playercontroller playercontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: kblack),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                    color: kwhite,
                    height: 40,
                    width: 300,
                    child: TextFormField(
                      controller: namecontroller,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Add player Name"),
                    )),
                IconButton(
                  onPressed: () {
                    playercontroller.addplayer(namecontroller.text);
                    namecontroller.text = '';
                  },
                  icon: const Icon(
                    Icons.add_rounded,
                    color: kwhite,
                  ),
                ),
              ],
            ),
          ),
          Mybutton(onPress: () {
            if (playercontroller.players.length >= 3) {
              Get.snackbar('Game starts Now', "Lets Start play",
                  backgroundColor: korange,
                  snackPosition: SnackPosition.BOTTOM,
                  duration: const Duration(seconds: 1));
            } else {
              Get.snackbar(
                  "Sorry we can't start game", "Game will Start Shortly",
                  backgroundColor: kred,
                  snackPosition: SnackPosition.BOTTOM,
                  duration: const Duration(seconds: 1));
            }
          })
        ],
      ),
    );
  }
}
