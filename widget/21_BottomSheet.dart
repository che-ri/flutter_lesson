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
    onPressBottomSheetModalButton() {
      return showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => BottomSheet(
              onClosing: () => Navigator.pop(context),
              builder: (BuildContext context) => Wrap(children: [
                    Container(
                      height: 200,
                      child: Text('바텀시트의 내용이 들어갈 곳입니다.'),
                    )
                  ])));
    }

    return Scaffold(
        body: Row(
      children: [
        ElevatedButton(
            onPressed: onPressBottomSheetModalButton,
            child: Text('bottomSheetModal 열기'))
      ],
    ));
  }
}
