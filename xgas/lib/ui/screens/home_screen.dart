import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Its me');
          },
        ),
        backgroundColor: Colors.grey,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print('hey there');
            },
          )
        ],
        title: Text(
          'Xgas',
          style: TextStyle(fontFamily: 'Trajan-Pro'),
        ),
      ),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}
