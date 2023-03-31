import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_n_todo/controller/auth_controller.dart';
import 'package:firebase_n_todo/pages/home_page.dart';
import 'package:firebase_n_todo/pages/login_page.dart';
import 'package:firebase_n_todo/pages/signup_page.dart';
import 'package:firebase_n_todo/pages/write_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  /// Firebase와 앱을 연결시킵니다.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// getx를 이용해 기본셋팅을 진행합니다.
    /// 로그인 관련 로직은 앱 전체에 영향을 주는 경우가 많습니다.
    /// 그러므로, 앱 전체를 AuthController로 감쌉니다.
    return GetBuilder(
        init: AuthController(),
        builder: (context) => GetMaterialApp(
              title: 'Todo App',
              theme: ThemeData(
                primarySwatch: Colors.amber,
              ),

              /// 하위는 페이지 목록입니다.
              routes: {
                '/': (context) => HomePage(),
                '/write': (context) => WritePage(),
                '/login': (context) => LoginPage(),
                '/signup': (context) => SignupPage()
              },
            ));
  }
}
