import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mainmenu.dart';
import 'suits.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.green,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
  addSuitsP1();
  deckListShuffleP1();
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
