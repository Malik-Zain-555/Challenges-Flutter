import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Main(), debugShowCheckedModeBanner: false));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButton(),
            Row(
              spacing: 10,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         spacing: -10,
          children: [
            Text(
              "Fitness",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            Text(
              "Tracking Device",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
