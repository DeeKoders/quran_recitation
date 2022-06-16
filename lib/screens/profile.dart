import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width / 2.5,
          child: Image.asset("images/muslim.png"),
        ),
      ],
    ));
  }
}
