import 'package:animation_flutter/Screens/dashboard.dart';
import 'package:animation_flutter/main.dart';
import 'package:flutter/material.dart';


class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

int indexChangerTo = 0;
List<Widget> pageWidgets = [GetStarted(),Dashboard()];

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 500,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Image.asset("assets/logo.png"),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hunger? Done it.",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "We give breakfast, lunch and dinner as well. Here is everything to fill and full your tummy.",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                    indexChangerTo = 1;
                    print("getStarted $indexChangerTo");
                    });
                  },
                  color: Colors.orange,
                  padding: EdgeInsetsGeometry.fromLTRB(40,15,40,15),
                  child: Text(
                    "Get Started $indexChangerTo",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
