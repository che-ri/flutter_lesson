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
    return const Scaffold(body: Center(child: SwitchPratice()));
  }
}

class SwitchPratice extends StatefulWidget {
  const SwitchPratice({super.key});

  @override
  State<SwitchPratice> createState() => _SwitchPraticeState();
}

class _SwitchPraticeState extends State<SwitchPratice> {
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Switch(
      /// Switch 위젯이 눌렸는지 안눌렸는지에 대한 값으로 설정합니다.
      value: isFocus,

      /// 트랙의 색상을 설정합니다.

      trackColor: const MaterialStatePropertyAll(Colors.lime),

      /// 손잡이 색상을 설정합니다.
      thumbColor: const MaterialStatePropertyAll(Colors.green),

      /// Switch가 눌러질 때마다 어떠한 로직을 처리할 수 있습니다.
      onChanged: (bool value) {
        setState(() {
          isFocus = value;
        });
      },
    ));
  }
}
