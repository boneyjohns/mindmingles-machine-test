import 'package:flutter/material.dart';

class PlayerName extends StatelessWidget {
  const PlayerName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black38,
                  ))
            ],
          )),
    );
  }
}
