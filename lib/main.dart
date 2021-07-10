import 'package:farmerapp/homepage.dart';
import 'package:farmerapp/login.dart';
import 'package:farmerapp/start.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'SignUp.dart';
import 'onboarding.dart';
import 'start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "Login": (BuildContext context) => Login(),
        "SignUp": (BuildContext context) => SignUp(),
        "Onboarding": (BuildContext context) => Onboarding(),
        "start": (BuildContext context) => Start(),
      },
    );
  }
}
