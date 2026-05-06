import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 218, 218),
        body: GradientContainer(
          colorList: [Colors.green, Colors.red, Colors.yellow],
        ),
      ),
    ),
  );
}
