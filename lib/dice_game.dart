import 'dart:math';

import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  Random random = new Random.secure();
  var player1_score = 0;
  var player2_score = 0;
  var player3_score = 0;
  var player4_score = 0;
  int index = 0;
  final dice_list = [
    'asset/images/d1.png',
    'asset/images/d2.jpg',
    'asset/images/d3.png',
    'asset/images/d4.jpg',
    'asset/images/d5.png',
    'asset/images/d6.png'
  ];
  bool isActive1 = true;
  bool isActive2 = true;
  bool isActive3 = true;
  bool isActive4 = true;

  void diceGame1() {
    setState(() {
      index = random.nextInt(6);
      player1_score += index + 1;
    });
  }

  void diceGame2() {
    setState(() {
      index = random.nextInt(6);
      player2_score += index + 1;
    });
  }

  void diceGame3() {
    setState(() {
      index = random.nextInt(6);
      player3_score += index + 1;
    });
  }

  void diceGame4() {
    setState(() {
      index = random.nextInt(6);
      player4_score += index + 1;
    });
  }

  bool isv1 = true;
  bool isv2 = true;
  bool isv3 = true;
  bool isv4 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Dice Gameplay 29",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
              child: Text(
                "Role the dice. The Player who can make the score : 29 first he will be the winner",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 8,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            size: 40,
                          ),
                          Text(
                            "Player 1",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            player1_score <= 29
                                ? "Score : $player1_score"
                                : "Winner",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          ElevatedButton(
                            child: Text(
                              'Role the Dice',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: isActive1
                                ? () {
                                    if (player1_score <= 29) {
                                      setState(() {
                                        isActive1 = false;
                                        isActive2 = true;
                                        isActive3 = false;
                                        isActive4 = false;
                                        diceGame1();
                                      });
                                    } else {
                                      isActive1 = false;
                                      isActive2 = true;
                                      isActive3 = true;
                                      isActive4 = true;
                                    }
                                  }
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 155,
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 8,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            size: 40,
                          ),
                          Text(
                            "Player 2",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            player2_score <= 29
                                ? "Score : $player2_score"
                                : "Winner",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          ElevatedButton(
                            child: Text(
                              'Role the Dice',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: isActive2
                                ? () {
                                    if (player2_score <= 29) {
                                      setState(() {
                                        isActive1 = false;
                                        isActive2 = false;
                                        isActive3 = true;
                                        isActive4 = false;
                                        diceGame2();
                                      });
                                    } else {
                                      isActive1 = true;
                                      isActive2 = false;
                                      isActive3 = true;
                                      isActive4 = true;
                                    }
                                  }
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              elevation: 2,
              color: Colors.white,
              child: Image.asset(
                dice_list[index],
                height: 200,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 8,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            size: 40,
                          ),
                          Text(
                            "Player 3",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            player3_score <= 29
                                ? "Score : $player3_score"
                                : "Winner",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          ElevatedButton(
                            child: Text(
                              'Role the Dice',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: isActive3
                                ? () {
                                    if (player3_score <= 29) {
                                      setState(() {
                                        isActive1 = false;
                                        isActive2 = false;
                                        isActive3 = false;
                                        isActive4 = true;
                                        diceGame3();
                                      });
                                    } else {
                                      isActive1 = true;
                                      isActive2 = true;
                                      isActive3 = false;
                                      isActive4 = true;
                                    }
                                  }
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 155,
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 8,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            size: 40,
                          ),
                          Text(
                            player4_score <= 29 ? "Player 4" : "Winner",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 85, 112, 35),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Score : $player4_score",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          ElevatedButton(
                            child: Text(
                              'Role the Dice',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: isActive4
                                ? () {
                                    if (player4_score <= 29) {
                                      setState(() {
                                        isActive1 = true;
                                        isActive2 = false;
                                        isActive3 = false;
                                        isActive4 = false;
                                        diceGame4();
                                      });
                                    } else {
                                      isActive1 = true;
                                      isActive2 = true;
                                      isActive3 = true;
                                      isActive4 = false;
                                    }
                                  }
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
