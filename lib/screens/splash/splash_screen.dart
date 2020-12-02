import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/screens/auth/auth.dart';
import 'package:splash_screen/screens/home/main_page.dart';
import 'components/body.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  Body body = Body();
  User _user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => (_user != null) ? MainPage() : AuthPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body.getBody(),
    );
  }
}
