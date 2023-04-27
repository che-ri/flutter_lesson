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
    return Scaffold(body: Center(child: const CheckboxWidget()));
  }
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      /// check를 했는지 안했는지에 대한 값입니다.
      value: isChecked,

      /// checkbox가 눌려질 때마다 어떠한 로직을 처리할 수 있습니다.
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },

      /// checkbox가 눌려졌을 때, 보여질 체크컬러입니다.
      checkColor: Colors.orange,
    );
  }
}
