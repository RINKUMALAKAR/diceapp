import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int diceOne = 4;
  int diceTwo = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //       Text(
      //         "Rinku Malakar",
      //         style: TextStyle(fontSize: 60),
      //       ),
      //     ],
      //   ),
      //),
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(child: Text("ROLL THE DICE")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: (Image.asset("images/dice${diceOne}.png")),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: (Image.asset("images/dice${diceTwo}.png")),
                  ))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text("${diceOne + diceTwo}",
              style: TextStyle(fontSize: 140, fontWeight: FontWeight.bold)),
          RawMaterialButton(
            onPressed: () {
              setState(() {
                diceOne = Random().nextInt(6) + 1;
                diceTwo = Random().nextInt(6) + 1;
                print("button is clicked");
              });
            },
            fillColor: Colors.red,
            child: const Text("Tap on Button"),
          )
        ],
      ),
    );
  }
}
