import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://storage.googleapis.com/cms-storage-bucket/lockup_flutter_horizontal.c823e53b3a1a7b0d36a9.png",
          width: 50,
          height: 50,
          // color: Colors.amber,
        ),
        SizedBox(height: 40,),
        Image.asset(
          "asset/images/pic1.png",
          width: 150,
          height: 150,
        ),
        SizedBox(height: 40,),
        Image.asset(
          "asset/images/pic2.png",
          width: 150,
          height: 150,
        )
      ],
    );
      
  }
}
