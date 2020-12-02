import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_screen/screens/home/main_page.dart';
import 'package:splash_screen/services/google.dart';

class AuthBody extends StatefulWidget {
  @override
  _AuthBodyState createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
  User _user = FirebaseAuth.instance.currentUser; //обьект авторизованого юзера

  // bool hasUserAuth = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      //стандартное обновление юзера
      setState(() {
        _user = user;
      });
    });

    // if (_user != null) {
    //     Future.delayed(Duration.zero, () {
    //       Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(builder: (context) => MainPage()),
    //       );
    //     });
    // }

    // if (_user == null) {
    //   hasUserAuth = true;
    // } else {
    //   Future.delayed(Duration.zero, () {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(builder: (context) => MainPage()),
    //     );
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 200.0,
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Аутентификация",
                style: TextStyle(
                  fontSize: 31.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.g_translate),
                      iconSize: 100.0,
                      onPressed: () {
                        GoogleAuth().login();
                      },
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 50.0),
              //   child: hasUserAuth
              //       ? Text(
              //           "Авторизуйтесь",
              //           style: TextStyle(
              //             fontSize: 21.0,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.red,
              //           ),
              //         )
              //       : Text(""),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
