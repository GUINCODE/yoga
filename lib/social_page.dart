import 'dart:html';

import 'package:flutter/material.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/login_page.dart';
import 'package:yoga/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialPage extends StatelessWidget {
  // const SocialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("social page"),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedAnimation(
                child: Container(
                  height: 200,
                  child: Image.asset("images/yoga2.jpg"),
                ),
                delay: 300),
            DelayedAnimation(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        "Change steck here",
                        style: GoogleFonts.poppins(
                          color: d_red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Save your progress to access your personal training ",
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      DelayedAnimation(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 40,
                          ),
                          child: Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: d_red,
                                  shape: StadiumBorder(),
                                  padding: const EdgeInsets.all(16),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPage(),
                                      ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.email_outlined,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "GMAIL",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  shape: StadiumBorder(),
                                  padding: const EdgeInsets.all(16),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPage(),
                                      ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(FontAwesomeIcons.facebook),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "FACEBOOK",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: StadiumBorder(),
                                  padding: const EdgeInsets.all(16),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPage(),
                                      ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "images/google.png",
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "GOOGLE",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        delay: 1200,
                      )
                    ],
                  ),
                ),
                delay: 300),
          ],
        ),
      ),
    );
  }
}
