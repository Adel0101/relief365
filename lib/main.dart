import 'package:flutter/material.dart';
import 'package:relief365/pages/homepage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Relief356',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xffCCCCFF, {
          50: Color(0xffce5641 ),//10%
          100: Color(0xffb74c3a),//20%
          200: Color(0xffa04332),//30%
          300: Color(0xff89392b),//40%
          400: Color(0xff733024),//50%
          500: Color(0xff5c261d),//60%
          600: Color(0xff451c16),//70%
          700: Color(0xff2e130e),//80%
          800: Color(0xff170907),//90%
          900: Color(0xff000000),//100%
        }),
      ),
      home: const HomePage(),
    );
  }
}