import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neomorphism/hotel.dart';

class Practise1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _buidBottomItemNavigationBar(Icons.home, "Home"),
          _buidBottomItemNavigationBar(Icons.search, "Search"),
          _buidBottomItemNavigationBar(Icons.favorite_border, "Tips"),
          _buidBottomItemNavigationBar(Icons.person_outline, "Profile"),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hello Pragathesh",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            shadows: [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 1,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Find your hotel ",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 23),
                        )
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(1.0, 3.0),
                              blurRadius: 2),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                            'https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(
                          10.0,
                          10.0,
                        ),
                        blurRadius: 10.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-10.0, -10.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.grey[400],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search for hotels",
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Popular hotels",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: hotelPopular.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 30, bottom: 10),
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(
                                  10.0,
                                  15.0,
                                ),
                                blurRadius: 15.0,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(
                                  -10.0,
                                  -15.0,
                                ),
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Container(
                                  height: 130,
                                  child: Image.network(
                                    hotelPopular[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      hotelPopular[index].title,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      hotelPopular[index].detail,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            hotelPopular[index].price,
                                            style: TextStyle(
                                              color: Color(0xff141897),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          hotelPopular[index].rate,
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff141897),
                                          size: 18,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Hot Packages",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xff003aa8),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: hotelPackages.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 32),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(10.0, 10.0),
                                blurRadius: 15.0,
                                spreadRadius: 2),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-10.0, -10.0),
                                blurRadius: 15.0,
                                spreadRadius: 2),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 125,
                                height: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  child: Image.network(
                                    hotelPackages[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      hotelPackages[index].title,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey[350],
                                          size: 18,
                                        ),
                                        Text(
                                          hotelPackages[index].detail,
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      hotelPackages[index].price,
                                      style: TextStyle(
                                          color: Color(0xff141897),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Icon(
                                          Icons.directions_car,
                                          color: Color(0xff141897),
                                          size: 22,
                                        ),
                                        Icon(Icons.wifi,
                                            color: Color(0xff141897), size: 22),
                                        Icon(
                                            Icons.airline_seat_individual_suite,
                                            color: Color(0xff141897),
                                            size: 22),
                                        Icon(Icons.free_breakfast,
                                            color: Color(0xff141897), size: 22),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  width: 56,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff141897),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                        blurRadius: 8.0,
                                      ),
                                    ],
                                  ),
                                  child: RotatedBox(
                                    // rotate text widget
                                    child: Center(
                                      child: Text(
                                        "Book now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    quarterTurns: 3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buidBottomItemNavigationBar(IconData icondata, String title) {
    return BottomNavigationBarItem(
      icon: Icon(icondata),
      title: Text(
        "",
      ),
      activeIcon: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(5.0, 5.0),
              blurRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-5.0, -5.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home,size: 20,
              color: Color(0xff141897),
            ),
            Text(
              "Home",
              style: TextStyle(
                color: Color(0xff141897),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
