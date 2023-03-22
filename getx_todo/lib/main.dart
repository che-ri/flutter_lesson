import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/detail_page.dart';
import 'package:getx_todo/to_do_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      routes: {
        "/": (context) => ToDoList(),
        "/detail": (context) => DetailPage()
      },
    );
  }
}
