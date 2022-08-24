import 'package:day9/d.dart';
import 'package:day9/dice_game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DesignDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
