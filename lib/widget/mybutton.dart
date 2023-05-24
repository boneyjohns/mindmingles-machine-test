import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  Mybutton({super.key, required this.onPress});
  Function() onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: const Text(
        "LET'S PLAY",
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
    );
  }
}
