import 'package:flutter/material.dart';
import 'package:splash_screen/screens/auth/components/body.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBody(),
    );
  }
}
