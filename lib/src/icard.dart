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
                _Name(),
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

  Widget _Name() {
    return Text(
      "MOHAMED HESHAM",
      style: TextStyle(
        fontFamily: "BebasNeue",
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
