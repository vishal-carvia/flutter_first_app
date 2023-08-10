import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore before variable name means that this thing is private and can only be used in this file.
// we can also define private variables like
// var _color = "";

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = randomizer.nextInt(6) + 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        // SizedBox is a widget which can create a box of specified size.
        // Here we are using it for padding purpose.
        // You can also add padding inside button by uncommenting the code inside TextButton.sytleFrom element.
        const SizedBox(
          height: 20,
        ),
        TextButton(
          // onPressed can be defined as anonymous function.
          // syntax is onPressed: () {function body}
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // We have added a sizedbox instead of this above.
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
