import 'package:flutter/material.dart';
import 'package:firebase_n_todo/controller/auth_controller.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);
  final idController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('회원가입')),
      body: Center(
          child: Container(
              width: 300,
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Column(children: [
                TextField(
                  controller: idController,
                  decoration: InputDecoration(
                      label: Text('ID'),
                      hintText: '이메일을 입력해주세요.',
                      border: InputBorder.none),
                ),
                TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: passwordController,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      hintText: '패스워드를 입력해 주세요.',
                      helperText: '6자리 이상으로 설정해주세요.',
                      helperStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      AuthController.to
                          .signup(idController.text, passwordController.text);
                    },
                    child: Text('완료'))
              ]))),
    );
  }
}
