import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:async';

class SharedScreen extends StatefulWidget {
  @override
  _SharedScreenState createState() => _SharedScreenState();
}

class _SharedScreenState extends State<SharedScreen> {
  var sharedPrefs;
  String _daten = "nix da";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<void> saveConfig(String att, String value) async {
    sharedPrefs = await SharedPreferences.getInstance();

    sharedPrefs.setString(att, value);
  }

  Future<void> loadConfig(String att) async {
    sharedPrefs = await SharedPreferences.getInstance();

    setState(() {
      _daten = sharedPrefs.getString(att);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared"),
      ),
      body: Column(
        children: <Widget>[
          Text(_daten),
          RaisedButton(
            child: Text("save"),
            onPressed: () {
              saveConfig("huhu", "hallo");
            },
          ),
          RaisedButton(
            child: Text("load"),
            onPressed: () {
              loadConfig("huhu");
            },
          )
        ],
      ),
    );
  }
}
