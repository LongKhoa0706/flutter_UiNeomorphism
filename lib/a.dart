import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentInxdex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.green, // Content of body here
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.indigo.withAlpha(80),
              title: Text('Some Text'),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNavigationBar(
              elevation: 0,
selectedItemColor: Colors.red,
              selectedLabelStyle: TextStyle(color: Colors.purpleAccent,fontSize: 22,),
              currentIndex: this.currentInxdex,
              onTap: (index) {
                setState(() {
                  currentInxdex = index;
                });
              },
              showUnselectedLabels: false,

              items: [
                BottomNavigationBarItem(
                  title: Text('A'),
                  icon: Icon(Icons.add),
                ),
                BottomNavigationBarItem(
                  title: Text('B'),
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}