import 'dart:async';
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => AuthPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body.getBody(),
    );
  }
}
