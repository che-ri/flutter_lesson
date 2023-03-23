import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  TodoModel({
    required this.id,
    required this.todo,
  });

  String id;
  String todo;

  TodoModel.fromJson(Map<String,dynamic> json)
      : id = json['id'],
        todo = json['todo'];

  Map<String, dynamic> toJson() => {'id': id, 'todo': todo};
}
