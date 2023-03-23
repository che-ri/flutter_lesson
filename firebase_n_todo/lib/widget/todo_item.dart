import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  TodoItem(
      {Key? key,
      required this.todo,
      required this.id,
      required this.handleDoneTodo})
      : super(key: key);

  /// 상위 위젯에서 데이터를 받아서 사용합니다.
  String todo;
  String id;

  /// 완료버튼을 눌렀을때 동작할 함수입니다.
  Function handleDoneTodo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$todo'),
          ElevatedButton(onPressed: () => handleDoneTodo(), child: Text('완료'))
        ],
      ),
    );
  }
}
