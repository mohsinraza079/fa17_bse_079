import 'package:fa17_bse_079/HardLevel.dart';
import 'package:flutter/material.dart';
import 'SimpleLevel.dart';
import 'HardLevel.dart';




class  HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(

                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      textColor: Colors.black,
                      color: Colors.grey,
                      child: Text(
                        'Simple Level',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: simpleDice,
                    ),
                  ),
                ),
                Expanded(

                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(

                      textColor: Colors.black,
                      color: Colors.grey,
                      child: Text(
                        'Hard Level',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: hardDice,
                    ),
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Mohsin Raza'),
                accountEmail: Text('mraza6797@gmail.com'),
                currentAccountPicture: GestureDetector(
                  onTap: ()=> _showSecondPage(context) ,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('images/abc.jpg')

                  ),
                )
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('Phone'),
              subtitle: Text('03055236257'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('mraza6797@gmail.com'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),

    );
  }
  void simpleDice() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  SimpleDice()));
    });
  }

  void hardDice() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  HardLevel()));
    });
  }
  void _showSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'my-hero-animation-tag',
              child: Image.asset('images/abc.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
