import 'package:flutter/material.dart';

class CatImage extends StatelessWidget {
  const CatImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1443&q=80'),
              fit: BoxFit.fill),
        ));
  }
}
