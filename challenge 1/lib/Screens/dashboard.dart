import 'package:animation_flutter/Screens/get_started.dart';
import 'package:animation_flutter/Widgets/quicklink.dart';
import 'package:animation_flutter/main.dart';
import 'package:flutter/material.dart';
// At the top of your dashboard.dart file
import 'package:flutter/material.dart'; // Or your other imports


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.fastfood)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        spacing: 20,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  Text(
                    "Yo👋, Hungry Man",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      cursorColor: Colors.orangeAccent,
                      style: TextStyle(color: Colors.orange[200]),
                      decoration: InputDecoration(
                        hintText: "Search Here",
                        hintStyle: TextStyle(color: Colors.orange[50]),
                        icon: Icon(Icons.search_outlined),
                        iconColor: Colors.white,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // This will space them out nicely
            children: [
              QuickLink(
                icon: Icons.cake,
                label: "Deserts",
                color: Colors.pink,
              ),
              QuickLink(
                icon: Icons.local_pizza,
                label: "Pizza",
                color: Colors.deepOrange,
              ),
              QuickLink(
                icon: Icons.fastfood,
                label: "Burgers",
                color: Colors.green,
              ),
              QuickLink(
                icon: Icons.emoji_food_beverage,
                label: "Drinks",
                color: Colors.blue,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,0,20,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Deals", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white,)),
                Text("See All", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.grey,))
              ],
            ),
          )
        ],
      ),
    );
  }
}
