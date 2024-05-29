import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepOrange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
       assert(selectedColor < colorList.length -1, 'Selected color must be less or equal than ${colorList.length} ');

  ThemeData getTheme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true
        )
        );
  }
}
