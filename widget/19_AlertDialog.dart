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
    showAlertDialog() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                  title: Text('AlertDialog'),
                  content: Text('Dialog의 내용이 들어갈 곳'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('취소'),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('예'),
                    ),
                  ]));
    }

    return Scaffold(
      body: ElevatedButton(
          onPressed: showAlertDialog, child: Text('AlertDialog 열기')),
    );
  }
}
