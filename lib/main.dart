import 'package:diceapp/DiceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyWidget());
  //debugDisableOpacityLayers = false;
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DiceScreen());
  }
}
