<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mainmenu.dart';
import 'suits.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
  addSuitsP1();
  deckListShuffleP1();
  addSuitsCPU();
  deckListShuffleCPU();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi-Lo Card Game',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Hi-Lo Card Game'),
      debugShowCheckedModeBanner: false,
      color: Colors.green,
      scrollBehavior: MyCustomScrollBehavior(),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mainmenu.dart';
import 'suits.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
  addSuitsP1();
  deckListShuffleP1();
  addSuitsCPU();
  deckListShuffleCPU();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi-Lo Card Game',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Hi-Lo Card Game'),
      debugShowCheckedModeBanner: false,
      color: Colors.green,
      scrollBehavior: MyCustomScrollBehavior(),
    );
  }
}
>>>>>>> af0e00d9de6e61337ae4084471c6ea74f48069a1
