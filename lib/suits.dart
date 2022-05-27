import 'package:flutter/material.dart';
import 'dart:core';

class FlipCardDetails extends StatefulWidget {
  final String imagePath;

  const FlipCardDetails({
    required Key key,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<FlipCardDetails> createState() => _FlipCardDetailsState();
}

class _FlipCardDetailsState extends State<FlipCardDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          widget.imagePath,
          key: ValueKey<String>(widget.imagePath),
          height: 250,
          width: 175,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}

class Suits {
  final int keys;
  final String imgpath;
  final int number;

  Suits(this.keys, this.imgpath, this.number);
}

var card1 = Suits(1, 'assets/images/AS.png', 1);
var card2 = Suits(2, 'assets/images/AH.png', 1);
var card3 = Suits(3, 'assets/images/AC.png', 1);
var card4 = Suits(4, 'assets/images/AD.png', 1);
var card5 = Suits(5, 'assets/images/2S.png', 2);
var card6 = Suits(6, 'assets/images/2H.png', 2);
var card7 = Suits(7, 'assets/images/2C.png', 2);
var card8 = Suits(8, 'assets/images/2D.png', 2);
var card9 = Suits(9, 'assets/images/3S.png', 3);
var card10 = Suits(10, 'assets/images/3H.png', 3);
var card11 = Suits(11, 'assets/images/3C.png', 3);
var card12 = Suits(12, 'assets/images/3D.png', 3);
var card13 = Suits(13, 'assets/images/4S.png', 4);
var card14 = Suits(14, 'assets/images/4H.png', 4);
var card15 = Suits(15, 'assets/images/4C.png', 4);
var card16 = Suits(16, 'assets/images/4D.png', 4);
var card17 = Suits(17, 'assets/images/5S.png', 5);
var card18 = Suits(18, 'assets/images/5H.png', 5);
var card19 = Suits(19, 'assets/images/5C.png', 5);
var card20 = Suits(20, 'assets/images/5D.png', 5);
var card21 = Suits(21, 'assets/images/6S.png', 6);
var card22 = Suits(22, 'assets/images/6H.png', 6);
var card23 = Suits(23, 'assets/images/6C.png', 6);
var card24 = Suits(24, 'assets/images/6D.png', 6);
var card25 = Suits(25, 'assets/images/7S.png', 7);
var card26 = Suits(26, 'assets/images/7H.png', 7);
var card27 = Suits(27, 'assets/images/7C.png', 7);
var card28 = Suits(28, 'assets/images/7D.png', 7);
var card29 = Suits(29, 'assets/images/8S.png', 8);
var card30 = Suits(30, 'assets/images/8H.png', 8);
var card31 = Suits(31, 'assets/images/8C.png', 8);
var card32 = Suits(32, 'assets/images/8D.png', 8);
var card33 = Suits(33, 'assets/images/9S.png', 9);
var card34 = Suits(34, 'assets/images/9H.png', 9);
var card35 = Suits(35, 'assets/images/9C.png', 9);
var card36 = Suits(36, 'assets/images/9D.png', 9);
var card37 = Suits(37, 'assets/images/10S.png', 10);
var card38 = Suits(38, 'assets/images/10H.png', 10);
var card39 = Suits(39, 'assets/images/10C.png', 10);
var card40 = Suits(40, 'assets/images/10D.png', 10);
var card41 = Suits(41, 'assets/images/JS.png', 11);
var card42 = Suits(42, 'assets/images/JH.png', 11);
var card43 = Suits(43, 'assets/images/JC.png', 11);
var card44 = Suits(44, 'assets/images/JD.png', 11);
var card45 = Suits(45, 'assets/images/QS.png', 12);
var card46 = Suits(46, 'assets/images/QH.png', 12);
var card47 = Suits(47, 'assets/images/QC.png', 12);
var card48 = Suits(48, 'assets/images/QD.png', 12);
var card49 = Suits(49, 'assets/images/KS.png', 13);
var card50 = Suits(50, 'assets/images/KH.png', 13);
var card51 = Suits(51, 'assets/images/KC.png', 13);
var card52 = Suits(52, 'assets/images/KD.png', 13);

void addSuitsP1() {
  deckList = [];
  deckList.add(card1);
  deckList.add(card2);
  deckList.add(card3);
  deckList.add(card4);
  deckList.add(card5);
  deckList.add(card6);
  deckList.add(card7);
  deckList.add(card8);
  deckList.add(card9);
  deckList.add(card10);
  deckList.add(card11);
  deckList.add(card12);
  deckList.add(card13);
  deckList.add(card14);
  deckList.add(card15);
  deckList.add(card16);
  deckList.add(card17);
  deckList.add(card18);
  deckList.add(card19);
  deckList.add(card20);
  deckList.add(card21);
  deckList.add(card22);
  deckList.add(card23);
  deckList.add(card24);
  deckList.add(card25);
  deckList.add(card26);
  deckList.add(card27);
  deckList.add(card28);
  deckList.add(card29);
  deckList.add(card30);
  deckList.add(card31);
  deckList.add(card32);
  deckList.add(card33);
  deckList.add(card34);
  deckList.add(card35);
  deckList.add(card36);
  deckList.add(card37);
  deckList.add(card38);
  deckList.add(card39);
  deckList.add(card40);
  deckList.add(card41);
  deckList.add(card42);
  deckList.add(card43);
  deckList.add(card44);
  deckList.add(card45);
  deckList.add(card46);
  deckList.add(card47);
  deckList.add(card48);
  deckList.add(card49);
  deckList.add(card50);
  deckList.add(card51);
  deckList.add(card52);
}

void addSuitsCPU() {
  deckList1 = [];
  deckList1.add(card1);
  deckList1.add(card2);
  deckList1.add(card3);
  deckList1.add(card4);
  deckList1.add(card5);
  deckList1.add(card6);
  deckList1.add(card7);
  deckList1.add(card8);
  deckList1.add(card9);
  deckList1.add(card10);
  deckList1.add(card11);
  deckList1.add(card12);
  deckList1.add(card13);
  deckList1.add(card14);
  deckList1.add(card15);
  deckList1.add(card16);
  deckList1.add(card17);
  deckList1.add(card18);
  deckList1.add(card19);
  deckList1.add(card20);
  deckList1.add(card21);
  deckList1.add(card22);
  deckList1.add(card23);
  deckList1.add(card24);
  deckList1.add(card25);
  deckList1.add(card26);
  deckList1.add(card27);
  deckList1.add(card28);
  deckList1.add(card29);
  deckList1.add(card30);
  deckList1.add(card31);
  deckList1.add(card32);
  deckList1.add(card33);
  deckList1.add(card34);
  deckList1.add(card35);
  deckList1.add(card36);
  deckList1.add(card37);
  deckList1.add(card38);
  deckList1.add(card39);
  deckList1.add(card40);
  deckList1.add(card41);
  deckList1.add(card42);
  deckList1.add(card43);
  deckList1.add(card44);
  deckList1.add(card45);
  deckList1.add(card46);
  deckList1.add(card47);
  deckList1.add(card48);
  deckList1.add(card49);
  deckList1.add(card50);
  deckList1.add(card51);
  deckList1.add(card52);
}

var deckList = <Suits>[];
var deckList1 = <Suits>[];

void deckListShuffleP1() {
  deckList.shuffle();
}

void deckListShuffleCPU() {
  int index = 0;
  deckList1.shuffle();
  store.add(deckList1[index].imgpath);
  store = [];
}

void worldShuffle() {
  deckList = [];
  addSuitsP1();
  deckListShuffleP1();
  deckList1 = [];
  addSuitsCPU();
  deckListShuffleCPU();
}

List<dynamic> store = [];
