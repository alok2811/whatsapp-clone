import 'package:flutter/material.dart';



MaterialColor primaryMaterialColor = const MaterialColor(
  4280704598,
  <int, Color>{
    50: Color.fromRGBO(
      38,
      94,
      86,
      .1,
    ),
    100: Color.fromRGBO(
      38,
      94,
      86,
      .2,
    ),
    200: Color.fromRGBO(
      38,
      94,
      86,
      .3,
    ),
    300: Color.fromRGBO(
      38,
      94,
      86,
      .4,
    ),
    400: Color.fromRGBO(
      38,
      94,
      86,
      .5,
    ),
    500: Color.fromRGBO(
      38,
      94,
      86,
      .6,
    ),
    600: Color.fromRGBO(
      38,
      94,
      86,
      .7,
    ),
    700: Color.fromRGBO(
      38,
      94,
      86,
      .8,
    ),
    800: Color.fromRGBO(
      38,
      94,
      86,
      .9,
    ),
    900: Color.fromRGBO(
      38,
      94,
      86,
      1,
    ),
  },
);




ThemeData myTheme = ThemeData(
  fontFamily: "customFont",
  primaryColorLight: const Color(0xff64cf43),
  primaryColor: const Color(0xff265e56),
  primarySwatch: primaryMaterialColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff265e56),
    ),
  ),
);
