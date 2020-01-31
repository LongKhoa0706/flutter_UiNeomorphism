import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neomorphism/buttontapped.dart';
import 'package:neomorphism/practise1.dart';

import 'a.dart';
import 'mybutton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool darkMode = false;
bool buttonPress = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: darkMode ? Colors.grey[850] : Colors.grey[300],
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: darkMode ? Colors.grey[900] : Colors.grey[500],
                        offset: Offset(10.0, 10.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: darkMode ? Colors.white30 : Colors.white,
                        offset: Offset(-10.0, -10.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.android,
                    size: 80,
                    color: darkMode ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                    color: darkMode ? Colors.grey[850] : Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: darkMode ? Colors.grey[850] : Colors.grey[500],
                          offset: Offset(15.0, 15.0),
                          blurRadius: 15.0),
                      BoxShadow(
                        color: darkMode ? Colors.white30 : Colors.white,
                        offset: Offset(-10.0, -10.0),
                        blurRadius: 15.0,
                      ),
                    ]),
                child: Center(
                  child: Text(
                    "3:55 AM ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      shadows: [
                        BoxShadow(
                          offset: Offset(3, 3),
                          color: darkMode ? Colors.white : Colors.grey[500],
                          blurRadius: 15.0,
                        ),
                        BoxShadow(
                            offset: Offset(-3, -3),
                            color: darkMode ? Colors.white : Colors.white,
                            blurRadius: 15.0),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      darkMode = true;
                    });
                  },
                  child: Text(
                    "Dark",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                FlatButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      darkMode = false;
                    });
                  },
                  child: Text(
                    "Light",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Practise1()));
                  },
                ),
              ],
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(10.0, 10.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-10.0, -10.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.grey[200],
                      Colors.grey[300],
                      Colors.grey[400],
                      Colors.grey[500],
                    ],
                    stops: [
                      0.1,
                      0.3,
                      0.8,
                      0.9,
                    ],
                  ),
                ),
                child: Icon(
                  Icons.android,
                  size: 80,
                  color: Colors.black,
                ),
              ),
            ),

            GestureDetector(
              onTap: _letsPress,
              child:  buttonPress ? ButtonTapped(icon: Icons.home,) : MyButton(icon: Icons.home,),
            )
          ],
        ),
      ),
    );
  }

  void _letsPress() {
    setState(() {
      buttonPress = !buttonPress;

    });
  }
}
