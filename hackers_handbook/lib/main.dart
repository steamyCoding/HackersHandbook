import 'package:flutter/material.dart';
import 'package:hackers_handbook/pages/anasayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),);
  }
}