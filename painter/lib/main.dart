import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:painter/paint_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Paint Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaintPage());
  }
}
