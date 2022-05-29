import 'package:flutter/material.dart';
import 'package:multimedia_app/screens/home_screen.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multimedia App',
      theme: ThemeData(
          textTheme: const TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
            subtitle1: TextStyle(),
            subtitle2: TextStyle(),
            headline1: TextStyle(),
            headline2: TextStyle(),
            headline3: TextStyle(),
            headline4: TextStyle(),
            headline5: TextStyle(),
            headline6: TextStyle(),
          ).apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
          scaffoldBackgroundColor: scaffolBackgroundColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white12,
          )),
      home: const HomeScreen(),
    );
  }
}
