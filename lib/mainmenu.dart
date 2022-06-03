import 'package:flutter/material.dart';
import 'package:hilowcardgameapp/responsivehelper.dart';
import 'responsivehelper.dart';
import 'stlesswidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWidget(
        mobile: MobileMod(),
        desktop: DesktopMod(),
      ),
    );
  }
}
/*
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
SafeArea(
        child: ResponsiveWidget(
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MobileMod(),
            ],
          ),
          desktop: DesktopMod(),
        ),
      ),
*/
