import 'package:flutter/material.dart';
// Default time (in case if location has not been set)
final String defaultTime = '-- : --';
final String defaultTitle = 'Salah Times';

// Different text styles:

TextStyle titleNameStyle() {
  return new TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: Colors.blueGrey.shade800
  );
}

TextStyle subtitleNameStyle() {
  return new TextStyle(
    fontSize: 19.0,
    color: Colors.teal.shade700
  );
}

TextStyle trailNameStyle() {
  return new TextStyle(
    fontSize: 22.0,
    color: Colors.blueGrey.shade900
  );
}

TextStyle hintStyle() {
  return new TextStyle(
      fontSize: 19.0,
      color: Colors.redAccent
  );
}

TextStyle buttonStyle() {
  return new TextStyle(
      fontSize: 16.0,
      color: Colors.white
  );
}

TextStyle sampleTextStyle() {
  return new TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      color: Colors.white
  );
}