import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_mingles/const/colors.dart';
import 'package:mind_mingles/controller/playercontroller.dart';
import 'package:mind_mingles/views/widget/mybottomsheet.dart';
import 'package:mind_mingles/views/widget/player_name_widget.dart';

class Myhome extends StatelessWidget {
  Myhome({super.key});
  final TextEditingController namecontroller = TextEditingController();
  final playercontroller = Get.put(Playercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
        title: const Text(
          "Lets Play",
          style: TextStyle(color: kwhite),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
              height: 500,
              child: GetX<Playercontroller>(
                builder: (c) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return PlayerName(
                        name: c.players[index],
                        index: index,
                      );
                    },
                    itemCount: c.players.length,
                  );
                },
              )),
          const SizedBox(height: 50),
          MyBottomSheet(
              namecontroller: namecontroller,
              playercontroller: playercontroller)
        ]),
      ),
    );
  }
}
