import 'package:flutter/material.dart';

class Itemdetail extends StatefulWidget {
  const Itemdetail({super.key});

  @override
  State<Itemdetail> createState() => _ItemdetailState();
}

class _ItemdetailState extends State<Itemdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column (
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepOrangeAccent, width: 3),
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage("assets/burger.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 350,
            ),
            const SizedBox(height: 10),
            Text(
              "Burger",
              style: TextStyle(
                color: Colors.deepOrange[300],
                fontSize: 50,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Text(
                    "Buy it",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
