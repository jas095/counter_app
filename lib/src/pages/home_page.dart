import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Nobody says it was easy'),
      ),
    );
  }
}
