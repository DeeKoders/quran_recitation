// ignore_for_file: prefer_const_constructors

import 'package:awan_birds_care/screens/master_home.dart';
import 'package:awan_birds_care/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String assetName = 'images/logo.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
    );
    return Scaffold(
      bottomNavigationBar: Container(child: Lottie.asset('images/waves.json')),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView(
          children: [
            Column(
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
                      Text("SIGN IN",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      const VerticalDivider(
                        width: 40,
                        thickness: 3,
                        color: Colors.white,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        child: Text("SIGN UP",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Text("Welcome Back",
                    style: TextStyle(
                        color: Color(0xff4f4f4f),
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        fillColor: Colors.white,
                        filled: true,
                        label: Text(
                          "Email",
                          style: TextStyle(fontSize: 14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 45,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        fillColor: Colors.white,
                        filled: true,
                        label: Text("Password", style: TextStyle(fontSize: 14)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                        )),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 20,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgotten Password?",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: MediaQuery.of(context).size.width / 30)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1ba5a1),
                          minimumSize: Size.fromHeight(
                              40), // fromHeight use double.infinity as width and 40 is the height
                        ),
                        onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Master_Home()),
                              )
                            },
                        child: Text("SIGN IN"))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
