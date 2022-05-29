import 'portraitstfulwidget.dart';
import 'package:flutter/material.dart';
import 'package:hilowcardgameapp/responsivehelper.dart';
import 'landscapestfulwidget.dart';
import 'howtoplay.dart';

class Textbutton2 extends StatelessWidget {
  const Textbutton2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HowToPlay()));
      },
      child: const Text(
        'How to Play',
        style: TextStyle(
          fontFamily: 'IndieFlower',
          fontSize: 50,
          color: Colors.black,
        ),
      ),
    );
  }
}

class Textbutton1 extends StatelessWidget {
  const Textbutton1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SecondScreen()));
      },
      child: const Text(
        'New Game',
        style: TextStyle(
          fontFamily: 'IndieFlower',
          fontSize: 50,
          color: Colors.black,
        ),
      ),
    );
  }
}

class Imagewidget extends StatelessWidget {
  const Imagewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/card.png',
      height: 600.0,
      width: 600.0,
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: ResponsiveWidget(
          mobile:
            MobileMode(),
          desktop:
            DesktopMode(),
        ),
      ),
      backgroundColor: Colors.green[200],
    );
  }
}

class DesktopMod extends StatefulWidget {
  const DesktopMod({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopMod> createState() => _DesktopModState();
}

class _DesktopModState extends State<DesktopMod> {
  @override
  Widget build(BuildContext context) {
    return const LandscapeMode();
  }
}

class LandscapeMode extends StatelessWidget {
  const LandscapeMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Padding(
        padding: EdgeInsets.fromLTRB(50, 450, 50, 300),
      ),
      Expanded(
        child: Imagewidget(),
      ),
      SizedBox(width: 12.50),
      Expanded(
        child: Textbutton1(),
      ),
      SizedBox(width: 12.50),
      Expanded(
        child: Textbutton2(),
      ),
    ]);
  }
}

class MobileMod extends StatelessWidget {
  const MobileMod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: PortraitMode(),
    );
  }
}

class PortraitMode extends StatelessWidget {
  const PortraitMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        ),
        SizedBox(height: 12.50),
        Expanded(
          child: Imagewidget(),
        ),
        SizedBox(height: 12.50),
        Expanded(
          child: Textbutton1(),
        ),
        SizedBox(height: 12.50),
        Expanded(
          child: Textbutton2(),
        ),
      ],
    );
  }
}

class Flipcard extends StatefulWidget {
  final String imgpath;
  const Flipcard({required Key key, required this.imgpath}) : super(key: key);

  @override
  State<Flipcard> createState() => _FlipcardState();
}

class _FlipcardState extends State<Flipcard> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imgpath,
      key: ValueKey<String>(widget.imgpath),
      height: 250,
      width: 175,
      fit: BoxFit.fill,
    );
  }
}

class FlipcardMobile extends StatefulWidget {
  const FlipcardMobile({Key? key, required this.imagpath}) : super(key: key);
  final String imagpath;

  @override
  State<FlipcardMobile> createState() => _FlipcardMobileState();
}

class _FlipcardMobileState extends State<FlipcardMobile> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imagpath,
      key: ValueKey<String>(widget.imagpath),
      height: 100,
      width: 50,
      fit: BoxFit.fill,
    );
  }
}

