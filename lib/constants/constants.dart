import 'package:flutter/material.dart';

const colorList = [
  Color(0xFFfdc379),
  Color(0xFF9398fe),
  Color(0xFFff7547),
  Color(0xFFc2ea96)
];

const TextStyle kTitleStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
const TextStyle kSubtitleStyle =
    TextStyle(fontWeight: FontWeight.w500, color: Colors.black38);

final MaterialColor white = MaterialColor(
  const Color.fromRGBO(250, 250, 250, 1).value,
  const <int, Color>{
    50: Color.fromRGBO(250, 250, 250, 1),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);
