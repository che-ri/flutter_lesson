import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/todo_controller.dart';

class WritePage extends StatelessWidget {
  WritePage({Key? key}) : super(key: key);

  /// TextField의 값을 가져오기 위해서는 TextEditingController를 생성하여, TextField에 controller로 붙여주어야 합니다.
  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: TodoController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(title: Text('할일 작성')),
            body: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Column(children: [
                    TextField(
                      controller: inputController,
                      decoration: InputDecoration(
                          hintText: '할일을 입력해 주세요.', border: InputBorder.none),
                    ),
                    ElevatedButton(onPressed: () {
                      /// 할일을 추가합니다.
                      controller.addTodo(inputController.text);
                      /// TextField의 값을 초기화합니다.
                      inputController.text = '';
                      /// 이전 페이지로 이동합니다. (홈으로 이동)
                      Get.back();
                    }, child: Text('작성완료'))
                  ]),
                )),
          );
        });
  }
}
