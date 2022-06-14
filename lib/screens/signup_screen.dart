// ignore_for_file: prefer_const_constructors

import 'package:awan_birds_care/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String assetName = 'images/logo.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
          children: [
            svg,
            SizedBox(
              height: 30,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text("SIGN IN",
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                  ),
                  const VerticalDivider(
                    width: 40,
                    thickness: 3,
                    color: Colors.white,
                  ),
                  Text("SIGN UP",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
