import 'package:flutter/material.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class UdidScreen extends StatefulWidget {
  @override
  _UdidScreenState createState() => new _UdidScreenState();
}

class _UdidScreenState extends State<UdidScreen> {
  String _udid = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String udid;
    try {
      udid = await FlutterUdid.udid;
    } on PlatformException {
      udid = 'Failed to get UDID.';
    }

    if (!mounted) return;

    setState(() {
      _udid = udid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: new Center(
          child: new Text('Running on: $_udid\n'),
        ),
      ),
    );
  }
}