import 'package:flutter/material.dart';
import 'package:projectb/flowe.dart';
import 'package:projectb/drawer/Login.dart';

class About extends StatelessWidget {
  const About();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black54,
        backgroundColor: Color(0xFFF1E8E8),
        centerTitle: true,
        title: (Text("About Us")),
      ),
      body: ListView(children: [
        Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("Tuwaiq Flower",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 50,
                        fontWeight: FontWeight.w900)),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(top: 100),
            width: 350,
            decoration: BoxDecoration(
                color: Color.fromARGB(75, 227, 175, 227),
                boxShadow: kElevationToShadow[5],
                borderRadius: BorderRadius.circular(50)),
            alignment: Alignment.center,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 15),
                  child: Text(
                      "We specialize in providing beautiful flowers for all occasions."),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                      "Our range includes but is not limited to Bouquets, Hand Tieds, Baskets, all combinations of Wedding Flowers, Sympathy Bouquets, Wreaths, Balloons, Gifts, Ceramic and Glassware."),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 10),
                  child: Text(
                      "All of our work can be produced in any color scheme to suit your needs and prices range from a starting price, up to whatever you wish to pay! "),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
