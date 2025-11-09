// lib/widgets/category_icon.dart

import 'package:flutter/material.dart';

class QuickLink extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const QuickLink({
    super.key,
    required this.icon,
    required this.label,
    this.color = Colors.red, // Default color if none is provided
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(height: 8), // Adds a little space
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
