import 'package:flutter/material.dart';
import 'package:neomorphism/practise1.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
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
                child: Icon(Icons.android,size: 80,color: darkMode ? Colors.white : Colors.black,),
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
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Practise1()));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
