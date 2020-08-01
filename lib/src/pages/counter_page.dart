import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _fSize = new TextStyle(fontSize: 27);

  int _conterClick = 0;

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
            style: _fSize,
          ),
          Text(
            '$_conterClick',
            style: _fSize,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // print('Hello console');
            setState(() {
              _conterClick++;
            });
          }),
    );
  }
}
