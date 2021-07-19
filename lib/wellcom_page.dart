import 'package:flutter/material.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/main.dart';
import 'package:yoga/social_page.dart';

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
                    height: 200,
                    // color: Colors.blueAccent,
                    child: Image.asset("images/yoga12.png"),
                  )),
              DelayedAnimation(
                  delay: 2600,
                  child: Container(
                      margin: EdgeInsets.only(top: 30, bottom: 20),
                      child: Text(
                          "Debutez vos journées avec pleines d'energie Cours intense de yoga ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontStyle: FontStyle.italic)))),
              DelayedAnimation(
                  delay: 3600,
                  child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: d_red,
                              shape: StadiumBorder(),
                              padding: EdgeInsets.all(20)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SocialPage(),
                              ),
                            );
                          },
                          child: Text("Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic))))),
            ],
          ),
        ),
      ),
    );
  }
}
