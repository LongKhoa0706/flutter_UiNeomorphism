import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neomorphism/practise/practise2/detailscreen.dart';
import 'package:neomorphism/practise/practise2/flower.dart';

class Practise2 extends StatefulWidget {
  @override
  _Practise2State createState() => _Practise2State();
}

class _Practise2State extends State<Practise2> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 2160, allowFontScaling: false);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xfff5f5f5),
        elevation: 0.0,
        items: <BottomNavigationBarItem>[
          _buildBottomItemNavigationBar(Icons.home),
          _buildBottomItemNavigationBar(Icons.favorite),
          _buildBottomItemNavigationBar(Icons.chat_bubble),
          _buildBottomItemNavigationBar(Icons.person),
        ],
      ),
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil().setHeight(100),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    height: ScreenUtil().setHeight(140),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38.withOpacity(0.3),
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
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(50),
                        ),
                        Text(
                          "Find flowers",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: ScreenUtil().setSp(45)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(100),
                  ),
                  Text(
                    "We will help you choose the most beautiful flowers.",
                    style: TextStyle(
                        color: Color(0xff172053),
                        fontSize: ScreenUtil().setSp(70),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: ScreenUtil().setWidth(800),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => DetailScreen()));

                            },
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 90),
                                  child: Container(
                                    width: ScreenUtil().setWidth(700),
                                    height: ScreenUtil().setWidth(500),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey[200],
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            offset: Offset(5.0, 5.0),
                                            blurRadius: 20.0,
                                          ),
                                          BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-10.0, -10.0),
                                              blurRadius: 10.0),
                                        ]),
                                  ),
                                ),
                                Positioned(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: ScreenUtil().setHeight(800),
                                      child: Image.network(
                                        listFlower[index].image,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(60),
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Color(0xff172053),
                        fontSize: ScreenUtil().setSp(70),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buildItemCategories(
                          Icons.payment, "Calla lilies", "\$19"),
                      _buildItemCategories(Icons.email, "Calla lilies", "\$32"),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(70),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buildItemCategories(Icons.photo, "Calla lilies", "\$88"),
                      _buildItemCategories(Icons.call, "Calla lilies", "\$49"),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(60),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildItemCategories(IconData iconData, String title, String price) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: ScreenUtil().setWidth(470),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(5.0, 5.0),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 10.0,
            offset: Offset(-5.0, -5.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            iconData,
            size: 35,
            color: Color(0xff8a8ea3),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff8a8ea3),
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenUtil().setSp(45)),
              ),
              Text(
                price,
                style: TextStyle(
                    color: Color(0xff172053),
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(60)),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildBottomItemNavigationBar(IconData iconData) {
    return BottomNavigationBarItem(
      icon: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(5.0, 5.0),
                blurRadius: 10,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-5.0, -5.0),
                blurRadius: 10,
              ),
            ]
        ),
        child: Icon(iconData, color: Colors.grey.shade500,),
      ),
      title: Text(
        "",
      ),
//      activeIcon: Container(
//        width: 53,
//        height: 53,
//        decoration: BoxDecoration(
//          shape: BoxShape.circle,
//          color: Colors.grey[300],
//          boxShadow: [
//            BoxShadow(
//              color: Colors.black38,
//              offset: Offset(5.0, 5.0),
//              blurRadius: 10.0,
//            ),
//            BoxShadow(
//              color: Colors.white,
//              offset: Offset(-5.0, -5.0),
//              blurRadius: 10.0,
//            ),
//          ],
//        ),
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Icon(
//                iconData,
//                color: Color(0xff141897),
//              ),
//              Text(
//                title,
//                style: TextStyle(
//                  color: Color(0xff141897),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
    );
  }
}
