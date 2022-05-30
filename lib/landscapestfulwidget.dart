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
  int xy = 0;
  int get imagePath => deckList[xy].number;
  late FlipCardController _controller;
  int _counter = 0;
  int xy1 = 1;
  int get imgpath => deckList[xy1].number;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.all(5)),
        Expanded(
          flex: 1,
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Deck',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 40,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.white,
                        height: 250,
                        width: 175,
                        child: Flipcard(
                          imgpath: deckList1[xy].imgpath,
                          key: ValueKey<int>(imgpath),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(25)),
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
                            imagePath: deckList[xy1].imgpath,
                            key: ValueKey<int>(imagePath),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              const Text(
                'Choose',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 40,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Expanded(
                flex: 0,
                child: ClipRRect(
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
                              int guesscard = deckList[xy].number;
                              int previouscard = deckList[xy1].number;
                              if (guesscard > previouscard) {
                                _counter++;
                                if (_counter <= 5) {
                                  store.add(deckList[xy1].imgpath);
                                }
                              } else {
                                _counter = 0;
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
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
                              int guesscard = deckList[xy].number;
                              int previouscard = deckList[xy1].number;
                              if (guesscard == previouscard) {
                                _counter++;
                                if (_counter <= 5) {
                                  store.add(deckList[xy1].imgpath);
                                }
                              } else {
                                _counter = 0;
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
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
                              int guesscard = deckList[xy].number;
                              int previouscard = deckList[xy1].number;
                              if (guesscard < previouscard) {
                                _counter++;
                                if (_counter <= 5) {
                                  store.add(deckList[xy1].imgpath);
                                }
                              } else {
                                _counter = 0;
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
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
                              if ((xy == 51) || (xy1 == 51)) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
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
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                'Guess Display(5 cards)',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 40,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.grey[400],
                        height: 250,
                        width: 875,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((BuildContext context, int index) {
                            return Image.asset(
                              store[index],
                              height: 250,
                              width: 175,
                            );
                          }),
                          itemCount: store.length,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Counter: $_counter',
                        style: const TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 35,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            worldShuffle();
                            Navigator.pop(context);
                          });
                        },
                        child: const Text(
                          'Home',
                          style: TextStyle(
                            fontFamily: 'IndieFlower',
                            fontSize: 35,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
