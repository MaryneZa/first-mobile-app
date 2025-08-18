import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 207, 188, 131),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      padding: EdgeInsets.all(20),
      child: Text(
        "I'm a child!",
        style: TextStyle(fontSize: 30, letterSpacing: 10),
      ),
    );
  }
}
