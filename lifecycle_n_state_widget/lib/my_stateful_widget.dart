import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({super.key}) {
    print('constructor : 클래스 생성 단계입니다.');
  }

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  Color boxColor = Colors.green; // box의 컬러값이 들어갈 곳입니다.
  int cnt = 0;

  @override
  void initState() {
    super.initState();
    print('initState : State 생성 단계입니다.');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies : 종속성이 변경되는 단계입니다.');
  }

  @override
  void didUpdateWidget(covariant MyStatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget : 위젯이 업데이트되는 단계입니다.');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate : State가 삭제되는 단계입니다.');
  }

  @override
  void dispose() {
    super.dispose();
    print('️dispose : 클래스가 삭제되는 단계입니다.');
  }

  @override
  Widget build(BuildContext context) {
    print('build : 위젯을 화면에 그려주는 단계입니다.');
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
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                cnt = cnt + 1;
              });
            },
            child: Text('리스트추가')),
        Container(
            height: 300,
            child: ListView.builder(
                itemCount: cnt,
                itemBuilder: (BuildContext, int) {
                  return Text(int.toString());
                }))
      ]),
    ));
  }
}
