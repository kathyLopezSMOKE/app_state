import 'package:app_state/home_page.dart';
import 'package:app_state/test1_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Test1Page(),
    );
  }
}