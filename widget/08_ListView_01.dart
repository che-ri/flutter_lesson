import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.all(100),
          scrollDirection: Axis.horizontal,
          children: [
            Container(height: 100, width: 100, color: Colors.amber),
            Container(height: 200, width: 100, color: Colors.green),
            Container(height: 50, width: 100, color: Colors.cyan),
            Container(height: 100, width: 100, color: Colors.amber),
            Container(height: 200, width: 100, color: Colors.green),
            Container(height: 50, width: 100, color: Colors.cyan),
            Container(height: 100, width: 100, color: Colors.amber),
            Container(height: 200, width: 100, color: Colors.green),
            Container(height: 50, width: 100, color: Colors.cyan),
          ]),
    );
  }
}
