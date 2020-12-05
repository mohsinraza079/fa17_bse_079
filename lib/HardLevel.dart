import 'package:flutter/material.dart';

import 'dart:math';
class HardDice extends StatefulWidget {
  @override
  _HardDiceState createState() => _HardDiceState();
}

class _HardDiceState extends State<HardDice> {
  var imageArray = ['dice1.png', 'dice2.png', 'dice3.png', 'dice4.png', 'dice5.png', 'dice6.png'];
  //var random = new Random();
  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Hard Dice Roll'),

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(child: FlatButton(
                    onPressed: (){
                      setState(() {
                        changeImage();
                        //Navigator.pop(context);
                      });
                    }, child: Image.asset('images/'+imageArray[randomIntForDiceOne], height: 150, width: 150,)
                ),)

              ],)
          ],
        ),
      ),
    );
  }
  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });
  }
}