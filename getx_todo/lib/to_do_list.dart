import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/todo_controller.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    /// GetXController를 위젯에서 사용하려면 GetBuilder()를 사용해야합니다.
    /// init 속성에는 사용할 GetXController를 넣고,
    /// builder에는 화면에 그려줄 위젯을 작성합니다.

    return GetBuilder(
        init: TodoController(),
        builder: (TodoController controller) {
          /// builder는 controller를 인자로 받아올 수 있는데, 이는 init 속성에 넣어두었던 GetXController의 값입니다.
          /// GetXController의 값을 사용하려면 controller.을 이용하여 접근할 수 있습니다. ex) controller.todos
          return Scaffold(
              body: Center(
                  child: Container(
                      width: 300,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /// 🎨 제목 UI
                            const Text('할일 목록',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),

                            /// 🎨 할일 입력창 UI
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: TextField(
                                      /// TextField는 'enter'를 눌렀을때 onSubmitted이 발생되며, onSubmitted은 input의 값을 전달해줍니다.
                                      onSubmitted: (String value) =>
                                          controller.handleSubmitInput(value),
                                      controller: controller.inputController,
                                    )),
                                    ElevatedButton(

                                        /// 버튼의 onPressed는 input의 값을 전달받지 못합니다. 따라서, controller를 통해서 input의 값을 받아와야합니다.
                                        onPressed:
                                            controller.handleConfirmButton,
                                        child: Text('입력'))
                                  ],
                                )),

                            /// 🎨 할일 목록 UI
                            Container(

                                /// 할일 목록이 나타날 박스를 높이 200px로 지정합니다.
                                height: 200,
                                child: ListView.separated(
                                    shrinkWrap: true,

                                    /// ListView 안에 들어갈 데이터의 갯수를 정해주지 않으면, 오류가 발생합니다.
                                    /// 우리는 할일 목록의 갯수만큼만 보여주면 되므로 todos의 길이만큼으로 정해줍니다.
                                    itemCount: controller.todos.length,

                                    ///itemBuilder를 통하여 ListView에 들어갈 UI를 그릴 수 있습니다.
                                    itemBuilder: (context, index) {
                                      /// 할일 목록의 각 항목 데이터입니다.
                                      String title = controller.todos[index];

                                      /// 클릭하면 디테일 페이지로 이동하도록 GestureDetector 감쌉니다.
                                      return GestureDetector(
                                          onTap: () {
                                            /// 디테일 페이지로 이동
                                            /// toNamed를 이용하여 해당 라우터명으로 이동할 수 있습니다.
                                            /// 라우터명은 GetMaterialApp 내 routes에서 설정할 수 있습니다.
                                            Get.toNamed('/detail');
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.lime,
                                              ),
                                              padding: EdgeInsets.all(10),
                                              child: Text('${title}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))));
                                    },

                                    /// separatorBuilder는 각 항목간 어떠한 것을 놓기 위함입니다. 주로 간격을 넣을때 사용합니다.
                                    separatorBuilder: (context, index) =>
                                        SizedBox(height: 8)))
                          ]))));
        });
  }
}
