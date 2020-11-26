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
      child: ListView.builder(
        itemCount: TestList().list.length,
        itemBuilder: (_, index) {
          return ListTile(
            subtitle: Text(
                TestList().list[index],
              style: TextStyle(fontSize: 70),
            ),
            onTap: () {print("${index+1} ${TestList().list[index]}");},
            trailing: Icon(
              Icons.ac_unit_outlined,
            ),
            isThreeLine: false,
          );
        },
      ),
    );
  }
}
// (_, index) => Text(
// TestList().list[index],
// style: TextStyle(fontSize: 50),
