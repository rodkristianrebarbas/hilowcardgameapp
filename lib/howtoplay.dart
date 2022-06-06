import 'package:flutter/material.dart';
import 'package:hilowcardgameapp/responsivehelper.dart';

class HowToPlay extends StatefulWidget {
  const HowToPlay({key}) : super(key: key);

  @override
  State<HowToPlay> createState() => _HowToPlayState();
}

class _HowToPlayState extends State<HowToPlay> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cardBg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 60)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      height: 380,
                      width: 380,
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            Padding(padding: EdgeInsets.all(20.0)),
                            Text(
                              'How To Play:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'IndieFlower',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            Text(
                              'To play the game, choose either three of the buttons to guess whether the next card is high, equal or low.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'IndieFlower',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            Text(
                              'After that, click or press next button to continue the game until the game is over by not guessing it.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'IndieFlower',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 30)),
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
          ),
          desktopportrait: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cardBg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 60)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      height: 380,
                      width: 380,
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            Padding(padding: EdgeInsets.all(20.0)),
                            Text(
                              'How To Play:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'IndieFlower',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            Text(
                              'To play the game, choose either three of the buttons to guess whether the next card is high, equal or low.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'IndieFlower',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            Text(
                              'After that, click or press next button to continue the game until the game is over by not guessing it.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'IndieFlower',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 30)),
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
          ),
          desktoplandscape: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    height: 500,
                    width: 500,
                    child: SingleChildScrollView(
                      child: Column(
                        children: const [
                          Padding(padding: EdgeInsets.all(20.0)),
                          Text(
                            'How To Play:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(20.0)),
                          Text(
                            'To play the game, choose either three of the buttons to guess whether the next card is high, equal or low.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(20.0)),
                          Text(
                            'After that, click or press next button to continue the game until the game is over by not guessing it.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Home',
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
      backgroundColor: Colors.green[200],
    );
  }
}
