// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(children: [
        (Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 3,
              child: Image.asset("images/muslim.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Danyal Ahmad",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
            ),
            Profile_Tile(
              main_title: "Account Settings",
              icon_data: Icons.person,
            ),
            Profile_Tile(
              main_title: "Language",
              icon_data: Icons.language,
            ),
            Profile_Tile(
              main_title: "About",
              icon_data: Icons.info_outline,
            ),
            Profile_Tile(
              main_title: "Privacy",
              icon_data: Icons.lock_outline_rounded,
            ),
            Profile_Tile(
              main_title: "Rate this App",
              icon_data: Icons.star,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: (Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Logout",
                      style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )),
              ),
            )
          ],
        )),
      ]),
    );
  }
}

class Profile_Tile extends StatelessWidget {
  const Profile_Tile(
      {Key? key, required this.main_title, required this.icon_data})
      : super(key: key);
  final String main_title;
  final IconData icon_data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 15, right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: (Row(
          children: [
            Icon(
              icon_data,
              color: Colors.black.withOpacity(0.5),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              main_title,
              style: const TextStyle(
                  color: Color(0xff4f4f4f),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 25,
              color: Colors.black,
            ),
          ],
        )),
      ),
    );
  }
}
