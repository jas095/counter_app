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
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _resetClick),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.remove), onPressed: _removeClick),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _addClick),
      ],
    );
  }

  void _addClick() {
    setState(() => _conterClick++);
  }

  void _removeClick() {
    setState(() => _conterClick--);
  }

  void _resetClick() {
    setState(() => _conterClick = 0);
  }
}
