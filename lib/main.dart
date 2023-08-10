import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  const List<Color> colorList = [
    Color.fromARGB(255, 80, 2, 68),
    Color.fromARGB(255, 44, 2, 103),
  ];
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colorList: colorList,
        ),
      ),
    ),
  );
}
