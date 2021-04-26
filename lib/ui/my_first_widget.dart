import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MyFirstWidget extends StatelessWidget {
  //Create a constructor to inject the callback
  //curly braces around the parameter make it an optional named parameter
  //use required annotation to make sure it is always passed in
  MyFirstWidget({@required this.onPressed});

  //give the button a callback for when it is pressed
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      child: RawMaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        fillColor: Colors.purple,
        splashColor: Colors.pink,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.mail,
              color: Colors.white,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text("DISPLAY MESSAGE", style: TextStyle(color: Colors.white)),
          ],
        ),
        onPressed: onPressed,
        shape: const StadiumBorder(),
      ),
    );
  }
}
