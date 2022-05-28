import 'package:flutter/material.dart';
import 'stlesswidget.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'suits.dart';

//Desktop Mode/Landscape Layout
class DesktopMode extends StatefulWidget {
  const DesktopMode({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopMode> createState() => _DesktopModeState();
}

class _DesktopModeState extends State<DesktopMode> {
  final ScrollController controller = ScrollController();
  int xy = 0;
  int get imagePath => deckList[xy].keys;
  late FlipCardController _controller;
  int _counter = 0;
  int xy1 = 0;
  int get imgpath => deckList1[xy1].keys;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 75)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Colors.white,
                height: 250,
                width: 175,
                child: Flipcard(
                  imgpath: deckList1[xy1].imgpath,
                  key: ValueKey<int>(imgpath),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(30)),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Colors.white,
                height: 250,
                width: 175,
                child: FlipCard(
                  speed: 500,
                  controller: _controller,
                  flipOnTouch: false,
                  front: Image.asset(
                    'assets/images/playing-card-back.jpg',
                    fit: BoxFit.fill,
                  ),
                  back: FlipCardDetails(
                      imagePath: deckList[xy].imgpath,
                      key: ValueKey<int>(imagePath)),
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(25)),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Colors.white,
                height: 75,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _controller.state?.controller?.forward();
                          if (deckList[xy].number > deckList1[xy1].number) {
                            _counter++;
                            if (_counter <= 5) {
                              store.add(deckList[xy].imgpath);
                            }
                          } else {
                            _counter = 0;
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Owwww.....Not Guessed'),
                                content: const Text(
                                    'Game Over!.....Press OK to revert back to home page'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popUntil(context, (route) {
                                        return route.settings.name == "/";
                                      });
                                      worldShuffle();
                                      store = [];
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        });
                      },
                      child: const Text(
                        "High",
                        style: TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _controller.state?.controller?.forward();
                          if (deckList[xy].number == deckList1[xy1].number) {
                            _counter++;
                            if (_counter <= 5) {
                              store.add(deckList[xy].imgpath);
                            }
                          } else {
                            _counter = 0;
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Owwww.....Not Guessed'),
                                content: const Text(
                                    'Game Over!.....Press OK to revert back to home page'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popUntil(context, (route) {
                                        return route.settings.name == "/";
                                      });
                                      worldShuffle();
                                      store = [];
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        });
                      },
                      child: const Text(
                        "Equal",
                        style: TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _controller.state?.controller?.forward();
                          if (deckList[xy].number < deckList1[xy1].number) {
                            _counter++;
                            if (_counter <= 5) {
                              store.add(deckList[xy].imgpath);
                            }
                          } else {
                            _counter = 0;
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Owwww.....Not Guessed'),
                                content: const Text(
                                    'Game Over!.....Press OK to revert back to home page'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popUntil(context, (route) {
                                        return route.settings.name == "/";
                                      });
                                      worldShuffle();
                                      store = [];
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        });
                      },
                      child: const Text(
                        "Low",
                        style: TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          xy++;
                          xy1++;
                          _controller.state?.controller?.reset();
                          if ((xy > 52) && (xy1 > 52)) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Congratulations!!'),
                                content: const Text(
                                    'You guessed all the cards..Press OK to revert back to home page'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popUntil(context, (route) {
                                        return route.settings.name == "/";
                                      });
                                      worldShuffle();
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        });
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(25)),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Colors.white,
                height: 250,
                width: 900,
                child: Scrollbar(
                  controller: controller,
                  isAlwaysShown: true,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: controller,
                          itemBuilder: ((BuildContext context, int index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.network(
                                  store[index],
                                  height: 270,
                                  width: 175,
                                ),
                              ],
                            );
                          }),
                          itemCount: store.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(padding: EdgeInsets.all(40)),
                Text(
                  'Counter: $_counter',
                  style: const TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(20)),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'IndieFlower',
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}