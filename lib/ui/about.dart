import 'package:flutter/material.dart';
import '../data/util.dart' as util;

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // About Screen app bar
      appBar: new AppBar(
        title: new Text('About'),
        centerTitle: true,
        backgroundColor: Colors.teal.shade600,
      ),
      // About Screen body (Stack of widgets, where
      // the next widget is placed on top of the previous)
      body: new Container(
        child: new Stack(
          children: <Widget>[
            // Image that fills the whole screen
            new Image.asset(
              'images/bismillah.jpg',
              fit: BoxFit.fill,
              height: 605.0,
            ),
            // Just some text
            new Container(
              alignment: Alignment(0.0, -0.51),
              child: new Text(
                'Sample Text',
                style: util.sampleTextStyle(),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
