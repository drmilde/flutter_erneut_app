import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class SensorScreen extends StatefulWidget {
  @override
  _SensorScreenState createState() => _SensorScreenState();
}

class _SensorScreenState extends State<SensorScreen> {
  String _daten = "noch nix";

  @override
  void initState() {
    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        //_daten = event.toString();
      });
      //print(event);
    });
// [AccelerometerEvent (x: 0.0, y: 9.8, z: 0.0)]

    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      //print(event);
    });
// [UserAccelerometerEvent (x: 0.0, y: 0.0, z: 0.0)]

    gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        _daten = event.toString();
      });
      //print(event);
    });
// [GyroscopeEvent (x: 0.0, y: 0.0, z: 0.0)]

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sensortest"),
      ),
      body: Column(
        children: <Widget>[
          Text("Wert " + _daten),
        ],
      )
    );

  }
}
