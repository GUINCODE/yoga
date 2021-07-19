import 'package:flutter/material.dart';
import 'package:yoga/delayed_animation.dart';

class WellcomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
          child: Column(
            children: [
              DelayedAnimation(
                  delay: 1000,
                  child: Container(
                    height: 200,
                    // color: Colors.blueAccent,
                    child: Image.asset("images/yogalogo.png"),
                  )),
              DelayedAnimation(
                  delay: 2000,
                  child: Container(
                    height: 300,
                    // color: Colors.blueAccent,
                    child: Image.asset("images/yoga1.png"),
                  )),
              DelayedAnimation(
                  delay: 2600,
                  child: Container(
                      margin: EdgeInsets.only(top: 30),
                      // height: ,
                      // color: Colors.blueAccent,
                      child: Text(
                          "Debutez vos journée avec pleines d'energie Cours intense de yoga ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontStyle: FontStyle.italic)))),
            ],
          ),
        ),
      ),
    );
  }
}
