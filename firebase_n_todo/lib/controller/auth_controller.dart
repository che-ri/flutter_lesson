import 'dart:async';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find<AuthController>();

  bool isLogin = false;
  User? userData = null;
  late StreamSubscription<User?> userStream;

  signup(String id, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: id, password: password);

      print('회원가입 성공!');
      Get.toNamed('/');

      return true;
    } catch (e) {
      print('회원가입에 실패하였습니다.');
    }
  }

  login(String id, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: id, password: password);

      print('로그인 성공!');
      Get.toNamed('/');
      return true;
    } catch (e) {
      print('로그인에 실패하였습니다.');
    }
  }

  @override
  void onInit() {
    super.onInit();

    /// 로그인 체크로직입니다.
    /// 컨트롤러 생성부터 종료될때까지 유저가 로그인했는지 아닌지에 대한 여부를 실시간으로 알도록 스트림을 이용하여 유저데이터를 받아오게합니다.
    userStream = FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        /// 유저가 로그아웃했다면 userData를 삭제합니다.
        userData = null;
        isLogin = false;
      } else {
        /// 유저가 로그인했다면 userData를 저장합니다.
        userData = user;
        isLogin = true;
      }

      print(user?.email);

      /// 뷰를 업데이트시킵니다.
      update();
    });
  }

  @override
  void onClose() {
    super.onClose();

    /// 위젯이 종료되면 스트림 또한 종료시킵니다.
    userStream.cancel();
  }
}
