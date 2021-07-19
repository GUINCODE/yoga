import 'package:flutter/material.dart';

import 'package:yoga/wellcom_page.dart';

const d_red = const Color(0xFFE97170);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "YoGa app",
        home: WellcomPage());
  }
}
