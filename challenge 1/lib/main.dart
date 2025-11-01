import 'package:animation_flutter/Screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:animation_flutter/Screens/get_started.dart';

void main() {
  runApp(MaterialApp(home: Main(), debugShowCheckedModeBanner: false));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

void goGetStarted(){

}


class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  pageWidgets[indexChangerTo],
      backgroundColor: Colors.red,
    );
  }
}
