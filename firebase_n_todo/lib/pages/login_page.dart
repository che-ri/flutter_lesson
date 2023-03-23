import 'package:flutter/material.dart';
import 'package:todo_app/controller/auth_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final idController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('로그인')),
      body: Center(
          child: Container(
            width: 300,
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Column(children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: idController,
                  decoration: InputDecoration(
                    label: Text('ID'),
                      hintText: '이메일을 입력해주세요.', border: InputBorder.none),
                ),
                TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: passwordController,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      hintText: '패스워드를 입력해 주세요.', border: InputBorder.none),
                ),
                ElevatedButton(onPressed: (){
                  AuthController.to.login(idController.text, passwordController.text);
                }, child: Text('완료'))
              ]))),
    );
  }
}
