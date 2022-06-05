import "package:flutter/material.dart";

class MobileLandscape extends StatefulWidget {
  const MobileLandscape({Key? key}) : super(key: key);

  @override
  State<MobileLandscape> createState() => _MobileLandscapeState();
}

class _MobileLandscapeState extends State<MobileLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cardBg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height,
              width: 500,
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: 183,
            ),
          ],
        ),
      ),
    );
  }
}
