import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    goHome() {
      Navigator.pushNamed(context, '/');
    }

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(labelText: 'ID')),
                    TextField(
                        decoration: InputDecoration(
                          labelText: 'Pwd',
                        ),
                        obscureText: true, // 입력값 가림
                        enableSuggestions: false, // 입력 제안 해제
                        autocorrect: false),
                  ],
                ),
              ),
// 자동 수정 해제
              ElevatedButton(onPressed: goHome, child: Text('로그인'))
            ],
          ),
        ),
      ),
    );
  }
}
