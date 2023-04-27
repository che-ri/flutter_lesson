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
        body: Center(
            child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)))),
          padding: MaterialStateProperty.all(
              const EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10)),
          backgroundColor: MaterialStateProperty.all(Colors.amber)),
      child: const Text('ElevatedButton'),
    )));
  }
}
