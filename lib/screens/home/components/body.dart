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
      child: ListView.separated(
        itemCount: TestList().list.length,
        separatorBuilder: (_ , __) => Divider(
          height: 5.0,
          thickness: 3.0,
          color: Colors.lightBlue,
        ),
        itemBuilder: (_, index) {
          return ListTile(
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
          );
        },
      ),
    );
  }
}
// (_, index) => Text(
// TestList().list[index],
// style: TextStyle(fontSize: 50),
