// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(children: [
        (Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset('images/bismillah.png')),
            Custom_Card(
              main_title: "Holy Quran",
              sec_title: "Recite Now",
            ),
            Custom_Card(
              main_title: "Hadeeth",
              sec_title: "Read",
            ),
            Custom_Card(
              main_title: "Praying",
              sec_title: "Memorize",
            ),
            Custom_Card(
              main_title: "Nashid",
              sec_title: "Learn More",
            ),
            Custom_Card(
              main_title: "Athan",
              sec_title: "Learn More",
            ),
            Custom_Card(
              main_title: "Mutton",
              sec_title: "Learn More",
            ),
            Custom_Card(
              main_title: "Donations",
              sec_title: "Learn More",
            ),
          ],
        )),
      ]),
    );
  }
}

class Custom_Card extends StatelessWidget {
  const Custom_Card(
      {Key? key, required this.main_title, required this.sec_title})
      : super(key: key);
  final String main_title;
  final String sec_title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: (Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  main_title,
                  style: TextStyle(
                      color: Color(0xff4f4f4f),
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  sec_title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.radar,
              color: Colors.black.withOpacity(0.5),
            ),
            Icon(
              Icons.arrow_right_alt,
              color: Colors.orange,
            )
          ],
        )),
      ),
    );
  }
}
