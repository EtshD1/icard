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
                SizedBox(width: double.infinity),
                _avatar(),
                _Title("MOHAMED HESHAM", "BebasNeue", 40.0, Colors.white),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget _avatar() {
    return CircleAvatar(
      backgroundImage: AssetImage("images/profile.png"),
      radius: 55.0,
    );
  }

  Widget _Title(String title, String fontFamily, double fontSize, Color color,
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
}
