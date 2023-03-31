import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    goLoginPage() {
      Navigator.pushNamed(context, '/login');
    }

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(onPressed: goLoginPage, child: Text('로그인하러가기')),
      ),
    );
  }
}
