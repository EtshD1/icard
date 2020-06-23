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
}
