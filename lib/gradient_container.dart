import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colorList;

  // key1 will be received by GradientContainer constructor and passed to
  // constructor (super) of StatelessWidget.

  // calling a constructor like this,
  // here, we can also place this.colorList outside curly braces as positional argument.
  // Then we wouldn't need required keyword.
  // const GradientContainer({key1, required this.colorList}) : super(key: key1);

  // or, we can send it directly
  // It will accept the named argument key and pass it to super under the same name.
  const GradientContainer({super.key, required this.colorList});

  // named constructor in dart

  const GradientContainer.greenblue({super.key})
      : colorList = const [
          Color.fromARGB(255, 48, 239, 22),
          Color.fromARGB(255, 24, 48, 227),
        ];

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
