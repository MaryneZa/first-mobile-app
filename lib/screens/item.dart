import 'package:first_app/models/person.dart';
import 'package:first_app/screens/addform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: data[index].job.bgColor,
                ),
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index].name,
                          // style: TextStyle(
                          //   color: Colors.white,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 30,
                          // ),
                          style: GoogleFonts.kanit(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "age : ${data[index].age} | job : ${data[index].job.title}",
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(data[index].job.image, width: 60, height: 60),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => AddForm()),
              );
            },
            icon: Icon(Icons.add, size: 40, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
