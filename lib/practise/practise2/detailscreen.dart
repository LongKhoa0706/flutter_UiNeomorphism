import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 2160, allowFontScaling: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: ScreenUtil().setHeight(120),
                      width: ScreenUtil().setWidth(120),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-3.0, -3.0),
                              blurRadius: 10.0),
                        ],
                      ),
                      child: Icon(
                        Icons.menu,
                        size: 25,
                      ),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(120),
                      width: ScreenUtil().setWidth(120),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 10.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-3.0, -3.0),
                              blurRadius: 10.0),
                        ],
                      ),
                      child: Icon(
                        Icons.add_shopping_cart,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Container(
                        width: double.infinity,
                        height: ScreenUtil().setHeight(500),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(5.0, 5.0),
                                blurRadius: 15.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-5.0, -5.0),
                                blurRadius: 10.0),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: Center(
                        child: Container(
                          height: 320,
                          child: Image.network(
                              'https://lh4.googleusercontent.com/proxy/2PScz2yhTHhAtmgmXmBP34M2hyvf4LMYFNB_aCFxXEE0F3kncsaN5HkyJFzV1qzyrW8-6CigMz4eExwOHmFxrR1wwOQY1drCDeX8wbRx7mTMnNFLu3Pj'),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(100),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(
                            3.0,
                            3.0,
                          ),
                          blurRadius: 10.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(
                            -3.0,
                            -3.0,
                          ),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Calla lilies",
                        style: TextStyle(
                            color: Color(0xff172053),
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(60)),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(50),
                      ),
                      Text(
                        "Combined with a delicate aroma of vanilla,they do not cause a feeling of enthusiastic admiration. The puurity of the lines and the shape buds is amazing",
                        style: TextStyle(
                            color: Color(0xff172053),
                            fontSize: ScreenUtil().setSp(40)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(100),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildItemDetailFlower("Number", "48"),
                        Container(
                          width: ScreenUtil().setWidth(450),
                          height: ScreenUtil().setHeight(150),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 10.0),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-3.0, -3.0),
                                    blurRadius: 10.0),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Color:",
                                style: TextStyle(
                                    color: Color(0xff172053),
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(45)),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(50),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(100),
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 10.0),
                                    BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(-3.0, -3.0),
                                        blurRadius: 10.0),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(50),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            _buildItemDetailFlower("Hyacinths", "2"),
                            SizedBox(
                              height: ScreenUtil().setHeight(50),
                            ),
                            _buildItemDetailFlower("Tulips", "7"),
                          ],
                        ),
                        Container(
                          width: ScreenUtil().setWidth(450),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 10.0),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-3.0, -3.0),
                                    blurRadius: 10.0),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Price:",
                                    style: TextStyle(
                                        color: Color(0xff172053),
                                        fontWeight: FontWeight.w400,
                                        fontSize: ScreenUtil().setSp(50)),
                                  ),
                                  Text(
                                    "\$200",
                                    style: TextStyle(
                                        color: Color(0xff172053),
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(55)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(40),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 13),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 2.0),
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-3.0, -3.0),
                                          blurRadius: 2.0),
                                    ]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "To pay",
                                      style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenUtil().setSp(45)),
                                    ),
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: Colors.deepOrange,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildItemDetailFlower(String title, String number) {
    return Container(
      width: ScreenUtil().setWidth(450),
      height: ScreenUtil().setHeight(150),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(3.0, 3.0),
                blurRadius: 10.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-3.0, -3.0),
                blurRadius: 10.0),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: Color(0xff172053),
                fontWeight: FontWeight.w500,
                fontSize: ScreenUtil().setSp(45)),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(50),
          ),
          Container(
            width: ScreenUtil().setWidth(100),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(3.0, 3.0),
                      blurRadius: 10.0),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3.0, -3.0),
                      blurRadius: 10.0),
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.grey.shade200,
                      Colors.grey.shade300,
                      Colors.grey.shade400,
                    ])),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                    color: Color(0xff172053), fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
