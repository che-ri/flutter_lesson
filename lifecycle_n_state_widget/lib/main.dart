import 'package:flutter/material.dart';
// import 'package:lifecycle_n_state_widget/my_stateless_widget.dart';
import 'package:lifecycle_n_state_widget/my_stateful_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Widget Example with state', home: MyStatefulWidget());
  }
}
