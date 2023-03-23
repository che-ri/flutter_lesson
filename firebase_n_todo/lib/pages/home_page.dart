import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/auth_controller.dart';
import 'package:todo_app/controller/todo_controller.dart';
import 'package:todo_app/widget/todo_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: TodoController(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                title: Text('할일 목록'),

                actions: AuthController.to.isLogin == true
                    ? null
                    : [
                        TextButton(
                            onPressed: () => Get.toNamed('/login'),
                            child: Text('로그인',
                                style: TextStyle(color: Colors.black))),
                        TextButton(
                            onPressed: () => Get.toNamed('/signup'),
                            child: Text('회원가입',
                                style: TextStyle(color: Colors.black)))
                      ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => Get.toNamed('/write'),
                child: Icon(Icons.edit),
              ),
              body: GridView.builder(
                shrinkWrap: true,
                itemCount: controller.todos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, mainAxisSpacing: 4, crossAxisSpacing: 4),
                itemBuilder: (context, idx) => TodoItem(
                  id: controller.todos[idx].id,
                  todo: controller.todos[idx].todo,
                  handleDoneTodo: () {
                    controller.deleteTodo(controller.todos[idx].id);
                  },
                ),
              ));
        });
  }
}
