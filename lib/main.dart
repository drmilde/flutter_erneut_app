import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_erneut_app/screens/udid_screen.dart';
import 'screens/shared_screen.dart';
import 'screens/take_picture_screen.dart';

void main() => runApp(MyApp());

/*
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
    ),
  );
}
*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SensorScreen(),
      home: SharedScreen(),
    );
  }
}
