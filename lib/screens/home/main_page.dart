import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen/screens/home/components/body.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text(
          "Заметки",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.exit_to_app_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              print("Выход");
              SystemNavigator.pop();
            },
          ),
        ],
      ),
      body: MainBody(),
    );
  }
}
