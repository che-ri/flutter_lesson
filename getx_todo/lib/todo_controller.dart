import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  /// 이미 TodoController를 생성한 이후, 이미 생성되어있는 GetXController를 사용하기 위해 인스턴스를 복제합니다.
  /// 이를 이용하면 메모리 낭비를 줄일 수 있습니다.
  static TodoController get to => Get.find<TodoController>();

  /// 어떠한 TextField를 조작하고 싶을 때, controller를 사용합니다.
  TextEditingController inputController = TextEditingController();

  /// 할일 목록 데이터입니다.
  List<String> todos = ['빨래하기', '수학공부'];

  handleSubmitInput(String title) {
    /// [title] : input의 값
    /// 'enter'를 눌렀을 때 동작하는 함수입니다.
    if (title == "") return;
    setTodo(title);
    resetInputValue();

    /// 🎨 UI 다시 그리기
    ///GetX에 내장되어있는 update 함수를 통해 GetXControlelr를 바라보고있는 위젯을 다시 그려줍니다.
    ///값을 변경하고 update 함수를 사용하지 않으면, 값은 변했으나 화면이 다시 그려지지 않습니다.
    update();
  }

  handleConfirmButton() {
    /// '입력' 버튼을 눌렀을 때 동작하는 함수입니다.
    final title = inputController.text;
    if (title == '') return;
    setTodo(title);
    resetInputValue();

    /// 🎨 UI 다시 그리기
    update();
  }

  setTodo(String todo) {
    /// 할일 항목에 할일을 추가해줍니다.
    todos = [...todos, todo];
  }

  resetInputValue() {
    /// input에 있는 값을 삭제시켜주는 함수입니다.
    inputController.clear();
  }

  @override
  void onClose() {
    /// 위젯이 삭제될 때, inputController 또한 더 이상 필요없으므로 삭제합니다.
    /// 반드시 삭제해야되는 것은 아니나, 이를 통해 메모리 낭비를 줄일 수 있습니다.
    inputController.dispose();
    super.onClose();
  }
}


