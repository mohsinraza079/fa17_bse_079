import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleDice(),
    );
  }
}
class SimpleDice extends StatefulWidget {
  @override
  _SimpleDiceState createState() => _SimpleDiceState();
}

class _SimpleDiceState extends State<SimpleDice> {
  var imageArray = ['dice1.png', 'dice2.png', 'dice3.png', 'dice4.png', 'dice5.png', 'dice6.png'];
  //var random = new Random();
  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Simple Dice App'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Text('The sum is: '+ (randomIntForDiceOne + randomIntForDiceTwo + 2).toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('images/'+imageArray[randomIntForDiceOne], height: 150, width: 150,),
                  Image.asset('images/'+imageArray[randomIntForDiceTwo], height: 150, width: 150,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(onPressed: changeImage,
                  child: Text('Roll Dice'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(onPressed:() {Navigator.pop(context);},
                  child: Text('Exit'),
                ),
              )

            ],
          ),
        )
    );
  }

  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });
  }
}