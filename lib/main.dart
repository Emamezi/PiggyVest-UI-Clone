import 'package:flutter/material.dart';
import './widgets/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PiggyVest',
      theme: ThemeData(
        primaryColor: Colors.blue.shade700,
        accentColorBrightness: Brightness.dark,
        // accentColor: Colors.blue,
      ),
      home: Wrapper(),
    );
  }
}
