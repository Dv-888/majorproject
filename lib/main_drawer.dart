import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.black38,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top: 20),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                image: AssetImage("assets/images/bg_01_2.png"),
                fit: BoxFit.cover),
                  )),
                  
                  Text('hello user'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
