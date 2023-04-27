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
    return Scaffold(body: Center(child: const RadioPratice()));
  }
}

class RadioPratice extends StatefulWidget {
  const RadioPratice({super.key});

  @override
  State<RadioPratice> createState() => _RadioPraticeState();
}

class _RadioPraticeState extends State<RadioPratice> {
  /// Radio 중 선택된 Radio의 값입니다. 초기값으로 첫번째 Radio의 값을 넣어두었습니다.
  String radioValue = 'first';

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Radio(

          /// 첫번째 Radio Widget이 갖는 값입니다.
          value: 'first',

          /// 어떤 Radio가 눌렸는지에 대한 값으로 설정합니다.
          groupValue: radioValue,

          /// 해당 Radio 위젯이 눌려졌을 때 보여질 색상입니다.
          activeColor: Colors.amber,

          /// Radio 위젯이 눌려질 때마다 어떠한 로직을 처리할 수 있습니다.
          onChanged: (String? value) {
            if (value != null)
              setState(() {
                radioValue = value;
              });
          }),
      Radio(

          /// 두번째 Radio Widget이 갖는 값입니다.
          value: 'second',

          /// 어떤 Radio가 눌렸는지에 대한 값으로 설정합니다.
          groupValue: radioValue,

          /// 해당 Radio 위젯이 눌려졌을 때 보여질 색상입니다.
          activeColor: Colors.cyan,

          /// Radio 위젯이 눌려질 때마다 어떠한 로직을 처리할 수 있습니다.
          onChanged: (String? value) {
            if (value != null)
              setState(() {
                radioValue = value;
              });
          })
    ]);
  }
}
