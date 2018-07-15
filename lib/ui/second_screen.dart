import 'package:flutter/material.dart';
import '../data/util.dart' as util;
import '../data/jsonData.dart' as jsonData;

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // Location text field controllers
  final _cityController = new TextEditingController();
  final _stateController = new TextEditingController();
  final _countryController = new TextEditingController();
  // Clears the location text fields
  void _clear() {
    _cityController.text = "";
    _stateController.text = "";
    _countryController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Settings screen app bar
      appBar: new AppBar(
        title: new Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.orange.shade800,
      ),
      // Settings screen body
      body: new Container(
        alignment: Alignment.topCenter,
        color: Colors.blueGrey.shade200,
        child: new ListView(
          children: <Widget>[
            // Small red image with paddings surrounding
            new Padding(padding: new EdgeInsets.all(10.0)),
            new Image.asset(
              'images/salah_icon.png',
              height: 70.0,
            ),
            new Padding(padding: new EdgeInsets.all(10.0)),
            // White container with the text fields and buttons
            new Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 55.0, 10.0),
              color: Colors.white,
              height: 320.0,
              child: Column(
                children: <Widget>[
                  // City text field
                  new TextField(
                    controller: _cityController,
                    style: util.titleNameStyle(),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'City',
                      labelStyle: util.titleNameStyle(),
                      hintText: 'Enter the city',
                      hintStyle: util.hintStyle(),
                      icon: Icon(Icons.location_city, color: Colors.red.shade800),
                    ),
                  ),
                  // State text field (optional)
                  new TextField(
                    controller: _stateController,
                    style: util.titleNameStyle(),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'State',
                        labelStyle: util.titleNameStyle(),
                        hintText: 'Enter the state',
                        hintStyle: util.hintStyle(),
                        icon: Icon(Icons.landscape, color: Colors.red.shade800)
                    ),
                  ),
                  // Country text field
                  new TextField(
                    controller: _countryController,
                    style: util.titleNameStyle(),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Country',
                        labelStyle: util.titleNameStyle(),
                        hintText: 'Enter the country',
                        hintStyle: util.hintStyle(),
                        icon: Icon(Icons.flag, color: Colors.red.shade800)
                    ),
                  ),
                  // Row of buttons
                  new Padding(padding: EdgeInsets.all(20.0)),
                  new Row(
                    children: <Widget>[
                      // Button that sets the chosen location
                      new Padding(padding: EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0)),
                      new Container(
                        height: 40.0,
                        width: 130.0,
                        child: new RaisedButton(
                          onPressed: () => jsonData.changeTimes(_cityController.text),
                          color: Colors.red,
                          elevation: 4.0,
                          splashColor: Colors.deepOrangeAccent,
                          child: new Text(
                            'Set Location',
                            textAlign: TextAlign.center,
                            style: util.buttonStyle(),
                          ),
                        ),
                      ),
                      // Button that clears the text fields
                      new Padding(padding: EdgeInsets.fromLTRB(35.0, 0.0, 0.0, 0.0)),
                      new Container(
                        height: 40.0,
                        width: 130.0,
                        child: new RaisedButton(
                          onPressed: _clear,
                          color: Colors.red,
                          elevation: 4.0,
                          splashColor: Colors.deepOrangeAccent,
                          child: new Text(
                            'Clear',
                            textAlign: TextAlign.center,
                            style: util.buttonStyle(),
                          ),
                        ),
                      )

                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
