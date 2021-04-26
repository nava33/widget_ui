import 'package:flutter/material.dart';
import './ui/my_first_widget.dart';

void main() {
  runApp(MaterialApp(title: "How to Create a Widget", home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to Create a Widget"),
        backgroundColor: Colors.purple,
      ),
      body: Center(child: Text("My First Widget")),
      floatingActionButton: MyFirstWidget(onPressed: () => debugPrint('Button Tapped')),
    );
  }
}
