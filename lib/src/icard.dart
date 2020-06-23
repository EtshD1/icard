import 'package:flutter/material.dart';

class ICard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                avatar(),
                title("MOHAMED HESHAM", "BebasNeue", 40.0, Colors.white),
                title("MOBILE & WEB DEVELOPER", "SourceSansPro", 20.0,
                    Color.fromARGB(200, 255, 255, 255), 1.0),
                infoField(Icons.phone, "+201010989785"),
                infoField(Icons.email, "mohamed.h.abouelenin@gmail.com"),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget avatar() {
    return CircleAvatar(
      backgroundImage: AssetImage("images/profile.png"),
      radius: 55.0,
    );
  }

  Widget title(String title, String fontFamily, double fontSize, Color color,
      [double letterSpacing = 0.0]) {
    return Text(
      title,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color,
          letterSpacing: letterSpacing),
    );
  }

  Widget infoField(IconData icon, String info) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: Colors.white),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 1.0, color: Color(0x64536DFE)),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                icon,
                color: Color(0xFF536DFE),
              ),
            ),
          ),
          Text(
            info,
            style: TextStyle(color: Colors.indigo, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
