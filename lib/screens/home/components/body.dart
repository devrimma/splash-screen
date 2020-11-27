import 'package:flutter/material.dart';
import 'package:splash_screen/data/test.dart';

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: TestList().list.length,
        itemBuilder: (_, index) {
          return Card(
            elevation: 10,
            shadowColor: Colors.lightBlue,
            margin: EdgeInsets.symmetric(vertical: 7),
            child: ListTile(
              title: Text(DateTime.now().toString()),
              subtitle: Text(
                  TestList().list[index],
                style: TextStyle(fontSize: 31.0),
              ),
              onTap: () {print("${index+1} ${TestList().list[index]}");},
              trailing: Icon(
                Icons.ac_unit_outlined,
              ),
              isThreeLine: false,
            ),
          );
        },
      ),
    );
  }
}

