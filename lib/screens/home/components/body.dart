import 'package:flutter/material.dart';

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(index);
            },
            title: Text('list'),
            subtitle: Text("456"),
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
