import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthBody extends StatefulWidget {
  @override
  _AuthBodyState createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
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
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
