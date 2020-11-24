import 'package:flutter/material.dart';

class Body {
  Container getBody() {
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
                "Заметки",
                style: TextStyle(
                  fontSize: 31.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                child: CircleAvatar(
                    radius: 80.0,
                    child: Icon(
                      Icons.account_tree_outlined,
                      size: 100.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
