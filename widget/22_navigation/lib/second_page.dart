import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    goFirstPage() {
      Navigator.pushNamed(context, '/');
    }

    return Scaffold(
      appBar: AppBar(title: Text('SecondPage')),
      body: Center(
        child:
            ElevatedButton(onPressed: goFirstPage, child: Text('첫번째 페이지로 이동')),
      ),
    );
  }
}
