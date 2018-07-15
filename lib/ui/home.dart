import 'package:flutter/material.dart';
import '../data/util.dart' as util;
import '../data/jsonData.dart' as jsonData;
import 'second_screen.dart' as secondScreen;
import 'about.dart' as aboutScreen;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // The top app bar
      appBar: new AppBar(
        title: new Text('${(jsonData.title != null)
            ? jsonData.title : util.defaultTitle}'),
        centerTitle: true,
        backgroundColor: Colors.green.shade500,
        actions: <Widget>[
          // Info Button (Switches to the About Screen)
          new IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => aboutScreen.AboutScreen()
              ));
            },
          ),
          // Menu Button (Switches to the Second Screen)
          new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => secondScreen.SecondScreen()
              ));
            },
          ),

        ],
      ),
      // Home screen grey wbody with a small image and white container in it
      body: new Container(
        alignment: Alignment.topCenter,
        color: Colors.blueGrey.shade400,
        child: new ListView(
          children: <Widget>[
            // Small image with surrounding paddings
            new Padding(padding: new EdgeInsets.all(7.5)),
            new Image.asset(
              'images/julus.png',
              height: 75.0,
            ),
            new Padding(padding: new EdgeInsets.all(7.5)),
            // White Container with the needed info
            new Container(
              padding: new EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
              color: Colors.white,
              height: 440.0,
              child: new Column(
                children: <Widget>[
                  // Fajr Time
                  new ListTile(
                    title: new Text('Fajr (Morning)', style: util.titleNameStyle()),
                    subtitle: new Text('الفجر', style: util.subtitleNameStyle()),
                    trailing: new Text(jsonData.fajrTime, style: util.trailNameStyle()),
                  ),
                  new Divider(
                    height: 0.0,
                    color: Colors.greenAccent,
                  ),
                  // Shurooq Time
                  new ListTile(
                    title: new Text('Shurooq (Sunrise)', style: util.titleNameStyle()),
                    subtitle: new Text('الشروق', style: util.subtitleNameStyle()),
                    trailing: new Text(jsonData.shurooqTime, style: util.trailNameStyle()),
                  ),
                  new Divider(
                    height: 0.0,
                    color: Colors.greenAccent,
                  ),
                  // Dzhuhr Time
                  new ListTile(
                    title: new Text('Dzhuhr (Noon)', style: util.titleNameStyle()),
                    subtitle: new Text('الظهر', style: util.subtitleNameStyle()),
                    trailing: new Text(jsonData.dzhuhrTime, style: util.trailNameStyle()),
                  ),
                  new Divider(
                    height: 0.0,
                    color: Colors.greenAccent,
                  ),
                  // 'Asr Time
                  new ListTile(
                    title: new Text("'Asr (Evening)", style: util.titleNameStyle()),
                    subtitle: new Text('العصر', style: util.subtitleNameStyle()),
                    trailing: new Text(jsonData.asrTime, style: util.trailNameStyle()),
                  ),
                  new Divider(
                    height: 0.0,
                    color: Colors.greenAccent,
                  ),
                  // Maghrib Time
                  new ListTile(
                    title: new Text('Maghrib (Sunset)', style: util.titleNameStyle()),
                    subtitle: new Text('المغرب', style: util.subtitleNameStyle()),
                    trailing: new Text(jsonData.maghribTime, style: util.trailNameStyle()),
                  ),
                  new Divider(
                    height: 0.0,
                    color: Colors.greenAccent,
                  ),
                  // 'Isha Time
                  new ListTile(
                    title: new Text("'Isha (Night)", style: util.titleNameStyle()),
                    subtitle: new Text('العشاء', style: util.subtitleNameStyle()),
                    trailing: new Text(jsonData.ishaTime, style: util.trailNameStyle()),
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
