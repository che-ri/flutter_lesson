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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color firstBoxColor = Colors.red;
  Color secondBoxColor = Colors.amber;
  Color thirdBoxColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      GestureDetector(
          onTap: () {
            setState(() {
              firstBoxColor = Colors.cyan;
            });
          },
          child: Container(
              width: 100,
              height: 100,
              color: firstBoxColor,
              child: Center(child: Text('클릭!')))),
      GestureDetector(
          onLongPress: () {
            setState(() {
              secondBoxColor = Colors.cyan;
            });
          },
          child: Container(
              width: 100,
              height: 100,
              color: secondBoxColor,
              child: Center(child: Text('길게 누르세요!')))),
      GestureDetector(
          onHorizontalDragEnd: (dragDetail) {
            setState(() {
              thirdBoxColor = Colors.cyan;
            });
          },
          child: Container(
              width: 100,
              height: 100,
              color: thirdBoxColor,
              child: Center(child: Text('드래그했다가 떼어보세요!'))))
    ]));
  }
}
