import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  Color boxColor = Colors.green; // box의 컬러값이 들어갈 곳입니다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          color: boxColor, // Container 위젯이 boxColor state를 참조하고 있네요!
          width: 300,
          height: 300,
          margin: EdgeInsets.only(bottom: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.black)),
                onPressed: () {
                  setState(() {
//UI에 반영될 데이터를 변경할 때에는 setState를 사용해야합니다.
                    boxColor = Colors.red;
                  });
                },
                child: Text(
                  'Red',
                  style: TextStyle(color: Colors.red),
                )),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.black)),
                onPressed: () {
                  setState(() {
                    boxColor = Colors.yellow;
                  });
                },
                child: Text(
                  'yellow',
                  style: TextStyle(color: Colors.yellow),
                )),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.black)),
                onPressed: () {
                  setState(() {
                    boxColor = Colors.green;
                  });
                },
                child: Text(
                  'green',
                  style: TextStyle(color: Colors.green),
                ))
          ],
        )
      ]),
    ));
  }
}
