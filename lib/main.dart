import 'package:flutter/material.dart';
import './widgets/wrapper.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PiggyVest',
      theme: ThemeData(
        primaryColor: Colors.blue.shade800,
        accentColor: Color(0xff8633d8),
        // accentColorBrightness: Brightness.dark,
        buttonColor: Colors.white,

        // fontFamily: GoogleFonts.roboto(
        //     textStyle: TextStyle(
        //   fontSize: 18,
        // )).fontFamily,
        // accentColor: Colors.blue,
      ),
      home: Wrapper(),
    );
  }
}
