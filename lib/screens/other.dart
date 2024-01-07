import 'package:flutter/material.dart';
import 'package:hospital/screens/status_gempa_page.dart';

class Other extends StatefulWidget {
  const Other({Key? key}) : super(key: key);

  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatusGempaPage(),
    );
  }
}
