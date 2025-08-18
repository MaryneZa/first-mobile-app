import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: const Color.fromARGB(255, 207, 188, 131),
          margin: const EdgeInsets.symmetric(horizontal:2, vertical: 10),
          padding: EdgeInsets.all(20),
          child: Text(
            "Test",
            style: TextStyle(fontSize: 20, letterSpacing: 10),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 207, 188, 131),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.all(20),
          child: Text(
            "Test",
            style: TextStyle(fontSize: 20, letterSpacing: 2),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 207, 188, 131),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.all(20),
          child: Text(
            "Test",
            style: TextStyle(fontSize: 20, letterSpacing: 2),
          ),
        ),
      ],
    );
  }
}
