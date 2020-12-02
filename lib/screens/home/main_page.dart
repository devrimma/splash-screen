import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen/screens/auth/auth.dart';
import 'package:splash_screen/screens/home/components/body.dart';
import 'package:splash_screen/services/google.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  User _user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text(
          "Заметки",
        ),
        centerTitle: true,
        actions: <Widget>[
          (_user != null) ? CircleAvatar(
            backgroundImage: NetworkImage(_user.photoURL),
            radius: 25.0,
          ) : SizedBox(),
          IconButton(
            icon: Icon(
              Icons.exit_to_app_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              print("Выход");
              GoogleAuth().logout();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AuthPage()),
              );
              // SystemNavigator.pop(); - закрывает приложение
            },
          ),
        ],
      ),
      body: MainBody(),
    );
  }
}
