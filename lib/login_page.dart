import 'dart:html';

import 'package:flutter/material.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/login_page.dart';
import 'package:yoga/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("social page"),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(Icons.close),
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
            Center(
              child: DelayedAnimation(
                  child: Text(
                    "Connexion avec l'adresse mail",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: d_red,
                    ),
                  ),
                  delay: 100),
            ),
            SizedBox(
              height: 40,
            ),
            DelayedAnimation(
                child: Text(
                  "Veuillez confirmer votre connexion avec votre adresse mail",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                delay: 150),
            SizedBox(
              height: 150,
            ),
            LoginForm(),
            DelayedAnimation(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: d_red,
                    shape: StadiumBorder(),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 125),
                  ),
                  child: Text(
                    "Confirmer",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
                delay: 150),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 500,
            child: TextField(
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                height: 1.0,
              ),
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 20,
                ),
                labelText: "Email",
                prefixIcon: Icon(Icons.mail),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DelayedAnimation(
            delay: 100,
            child: TextField(
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27.0,
                height: 1.0,
              ),
              obscureText: _obscureText,
              decoration: InputDecoration(
                // hintColor: d_red,
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 20,
                ),
                labelText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: _obscureText ? Colors.black : d_red,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
