import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'stlesswidget.dart';
import 'suits.dart';

//Mobile Mode/Portrait Layout
class MobileMode extends StatefulWidget {
  const MobileMode({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileMode> createState() => _MobileModeState();
}

class _MobileModeState extends State<MobileMode> {
  final ScrollController controller = ScrollController();
  int xy = 0;
  int get imagePath => deckList[xy].number;
  late FlipCardController _controller;
  int xy1 = 1;
  int get imagpath => deckList[xy1].number;
  int _counter = 0;

  String hold1 = "cardSlot",
      hold2 = "cardSlot",
      hold3 = "cardSlot",
      hold4 = "cardSlot",
      hold5 = "cardSlot";

  void pushCard() {
    hold5 = hold4;
    hold4 = hold3;
    hold3 = hold2;
    hold2 = hold1;
    hold1 = deckList[xy1].imgpath;
  }

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.only(top: 10)),
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
                  fontSize: 30,
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
                        height: 160,
                        width: 115,
                        child: FlipcardMobile(
                          imagpath: 'assets/images/${deckList[xy].imgpath}.png',
                          key: ValueKey<int>(imagpath),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(15)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.white,
                        height: 160,
                        width: 115,
                        child: FlipCard(
                          speed: 500,
                          controller: _controller,
                          flipOnTouch: false,
                          front: Image.asset(
                            'assets/images/playing-card-back.jpg',
                            fit: BoxFit.fill,
                          ),
                          back: FlipCardDetails(
                            imagePath:
                                'assets/images/${deckList[xy1].imgpath}.png',
                            key: ValueKey<int>(imagePath),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                'Choose',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 30,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(top: 5)),
              Expanded(
                flex: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.white,
                    height: 60,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _controller.state?.controller?.forward();
                              if (deckList[xy1].number > deckList[xy].number) {
                                _counter++;
                                if (_counter <= 5) {
                                  pushCard();
                                }
                              } else {
                                _counter = 0;
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text(
                                        'Owwww.....Not Guessed, Play Again?'),
                                    content: const Text(
                                        'Game Over!.....Press OK to revert back to home page'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SecondScreen()));
                                          worldShuffle();
                                          store = [];
                                        },
                                        child: const Text('Play Again'),
                                      ),
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
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _controller.state?.controller?.forward();
                              if (deckList[xy1].number == deckList[xy].number) {
                                _counter++;
                                if (_counter <= 5) {
                                  pushCard();
                                }
                              } else {
                                _counter = 0;
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text(
                                        'Owwww.....Not Guessed, Play Again?'),
                                    content: const Text(
                                        'Game Over!.....Press OK to revert back to home page'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SecondScreen()));
                                          worldShuffle();
                                          store = [];
                                        },
                                        child: const Text('Play Again'),
                                      ),
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
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _controller.state?.controller?.forward();
                              if (deckList[xy1].number < deckList[xy].number) {
                                _counter++;
                                if (_counter <= 5) {
                                  pushCard();
                                }
                              } else {
                                _counter = 0;
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text(
                                        'Owwww.....Not Guessed, Play Again?'),
                                    content: const Text(
                                        'Game Over!.....Press OK to revert back to home page'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SecondScreen()));
                                          worldShuffle();
                                          store = [];
                                        },
                                        child: const Text('Play Again'),
                                      ),
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
                              fontSize: 30,
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
                              if ((_counter == 52)) {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('Congratulations!!'),
                                    content: const Text(
                                        'You guessed all the cards..Press OK to revert back to home page'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SecondScreen()));
                                          worldShuffle();
                                          store = [];
                                        },
                                        child: const Text('Play Again'),
                                      ),
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
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                'Guess Display(5 cards)',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 30,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(top: 5)),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.grey[400],
                        height: 124,
                        width: 75,
                        child: Image.asset(
                          'assets/images/$hold1.png',
                          height: 124,
                          width: 75,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(2)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.grey[400],
                        height: 124,
                        width: 75,
                        child: Image.asset(
                          'assets/images/$hold2.png',
                          height: 124,
                          width: 75,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(2)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.grey[400],
                        height: 124,
                        width: 75,
                        child: Image.asset(
                          'assets/images/$hold3.png',
                          height: 124,
                          width: 75,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(2)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.grey[400],
                        height: 124,
                        width: 75,
                        child: Image.asset(
                          'assets/images/$hold4.png',
                          height: 124,
                          width: 75,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(2)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.grey[400],
                        height: 124,
                        width: 75,
                        child: Image.asset(
                          'assets/images/$hold5.png',
                          height: 124,
                          width: 75,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Counter: $_counter',
                        style: const TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 5)),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            worldShuffle();
                            Navigator.popUntil(context, (route) {
                              return route.settings.name == "/";
                            });
                          });
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
          ),
        ),
      ],
    );
  }
}
