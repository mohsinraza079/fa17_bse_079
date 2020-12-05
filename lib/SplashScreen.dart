import 'dart:async';

import 'package:flutter/material.dart';

import 'NavigationDrawer.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MaterialApp(
            title: 'Dice App',
            home: HomePage(),
            theme: ThemeData(
                primarySwatch: Colors.green)))));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('images/abc.jpg'), height: 300),
          Text("Mohsin Raza", style: TextStyle(fontSize: 20,color: Colors.green)),
          SizedBox(
            height: 10,
          ),
          Text("FA17-BSE-079", style: TextStyle(fontSize: 20,color: Colors.green)),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}