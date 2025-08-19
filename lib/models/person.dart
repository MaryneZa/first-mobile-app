import 'package:flutter/material.dart';

enum Job {
  doctor(title: "doctor", image: "asset/images/pic2.png", bgColor: Colors.green),
  teacher(title: "teacher", image: "asset/images/pic6.png", bgColor: Colors.purple),
  nurse(title: "nurse", image: "asset/images/pic3.png", bgColor: Colors.pink),
  police(title: "police", image: "asset/images/pic4.png", bgColor: Colors.blue);

  const Job({required this.title, required this.image, required this.bgColor});
  final String title;
  final String image;
  final Color bgColor;
}

class Person {

  // Constructor
  Person({
    required this.name,
    required this.age,
    required this.job
  });

  String name;
  int age;
  Job job;
}

// List data = ["Anna", "Canon", "Neno", "Alice"];

List<Person> data = [
  Person(name: "Anna", age: 20, job: Job.doctor),
  Person(name: "Canon", age: 32, job: Job.teacher),
  Person(name: "Neno", age: 20, job: Job.police),
];


