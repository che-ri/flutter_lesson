import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  goHome() {
    /// 홈으로 이동
    Get.toNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(onPressed: goHome, child: Text('홈으로 이동'))));
  }
}
