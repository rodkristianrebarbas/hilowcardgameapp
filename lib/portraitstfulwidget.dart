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
  int get imagePath => deckList[xy].keys;
  late FlipCardController _controller;
  int xy1 = 0;
  int get imagpath => deckList1[xy1].keys;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(top: 5)),
          Expanded(flex: 1,child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Deck',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 30,
                  color:Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width:115,
                      child: FlipcardMobile(
                        imagpath: deckList1[xy1].imgpath,
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
                      width:115,
                      child: FlipCard(
                        speed: 500,
                        controller: _controller,
                        flipOnTouch: false,
                        front: Image.asset(
                          'assets/images/playing-card-back.jpg',
                          fit: BoxFit.fill,
                        ),
                        back: FlipCardDetailsMobile(
                          imagePath: deckList[xy].imgpath,
                          key: ValueKey<int>(imagePath),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top:10)),
              const Text(
                'Choose',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 30,
                  color:Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              ClipRRect(
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
                            fontSize: 30,
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
                            fontSize: 30,
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
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                'Guess Display(5 cards)',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 30,
                  color:Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  color: Colors.grey[400],
                  height: 125,
                  width: 390,
                  child: Scrollbar(
                    controller: controller,
                    isAlwaysShown: true,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: controller,
                            itemBuilder: ((BuildContext context, int index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Padding(padding: EdgeInsets.all(1)),
                                  Image.asset(
                                    store[index],
                                    height: 124,
                                    width: 75,
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
              const Padding(padding: EdgeInsets.only(top:15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Padding(padding: EdgeInsets.only(top:5)),
                      Text(
                        'Counter: $_counter',
                        style: const TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top:5)),
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
