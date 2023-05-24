import 'package:flutter/material.dart';
import 'package:mind_mingles/const/colors.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({super.key, required this.onPress});
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(backgroundColor: korange),
      child: const Text(
        "LET'S PLAY",
        style: TextStyle(color: kwhite),
      ),
    );
  }
}
