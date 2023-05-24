import 'package:flutter/material.dart';
import 'package:mind_mingles/widget/mybutton.dart';
import 'package:mind_mingles/widget/player_name_widget.dart';

class Myhome extends StatelessWidget {
  Myhome({super.key});
  TextEditingController namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Lets Play",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return PlayerName(name: 'name');
              },
              itemCount: 10,
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.black,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                          color: Colors.white,
                          height: 40,
                          width: 300,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                hintText: "Add player Name"),
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Mybutton(onPress: () {})
              ],
            ),
          )
        ]),
      ),
    );
  }
}
