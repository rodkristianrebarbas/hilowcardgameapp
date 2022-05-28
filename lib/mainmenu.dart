<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:hilowcardgameapp/responsivehelper.dart';
import 'responsivehelper.dart';
import 'stlesswidget.dart';
import 'package:flutter/gestures.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'IndieFlower',
            fontSize: 50.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MobileMod(),
            ],
          ),
          desktop: const DesktopMod(),
        ),
      ),
      backgroundColor: Colors.green[200],
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
=======
import 'package:flutter/material.dart';
import 'package:hilowcardgameapp/responsivehelper.dart';
import 'responsivehelper.dart';
import 'stlesswidget.dart';
import 'package:flutter/gestures.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'IndieFlower',
            fontSize: 50.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MobileMod(),
            ],
          ),
          desktop: const DesktopMod(),
        ),
      ),
      backgroundColor: Colors.green[200],
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
>>>>>>> af0e00d9de6e61337ae4084471c6ea74f48069a1
