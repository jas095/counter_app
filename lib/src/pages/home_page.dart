import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final fSize = new TextStyle(fontSize: 27);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Home'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Number of clicks',
            style: fSize,
          ),
          Text(
            '0',
            style: fSize,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Hello console');
          }),
    );
  }
}
