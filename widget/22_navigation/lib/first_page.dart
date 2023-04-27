import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    goSecondPage() {
      Navigator.pushNamed(context, '/second');
    }

    return Scaffold(
      appBar: AppBar(title: Text('FirstPage')),
      body: Center(
        child:
            ElevatedButton(onPressed: goSecondPage, child: Text('두번째 페이지로 이동')),
      ),
    );
  }
}
