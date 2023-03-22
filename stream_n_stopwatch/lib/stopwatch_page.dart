import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  /// streamController의 경우, 초기값이 없으면 항상 값이 null 입니다. 스트림의 초기값을 만들어주려면 .. 구문을 이용하여, 값을 추가시켜주어야합니다.
  /// .. 구문은 원본 객체에 어떠한 행위를 더한 객체를 반환합니다. 아래에서는 0이라는 값을 더한 객체를 반환해줍니다.
  /// 이 스트림을 이용하여 "화면에 보여질" 시간데이터를 축적합니다.
  final StreamController<int> _controller = StreamController<int>()..add(0);

  /// flutter에는 stopwatch기능을 하는 클래스가 있습니다. 이를 통해 start, reset 같은 기능들을 수행할 수 있습니다.
  final Stopwatch _stopwatch = Stopwatch();

  /// 스톱워치를 실행하고나서 임의의 시간 간격으로 스트림에 값을 추가해주어야하므로 Timer를 사용합니다.
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      /// stopwatch가 동작중(실행중)일 때에만 0.1초마다 stopwatch의 값을 받아와서 스트림에 값을 추가해줍니다.
      if (_stopwatch.isRunning) {
        _controller.add(_stopwatch.elapsedMilliseconds);
      }
    });
  }

  @override
  void dispose() {
    /// 위젯이 종료될때 스트림을 종료해주지 않으면 메모리 누수가 발생할 수 있습니다.
    /// Timer 또한 stream의 일종이므로 같이 종료해줍니다.
    _controller.close();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch'),
      ),
      body: Center(
        ///StreamBuilder 위젯을 통하여 스트림의 값을 이용한 UI를 만들 수 있습니다.
        child: StreamBuilder<int>(
          /// 사용할 stream을 지정합니다.
          stream: _controller.stream,

          /// snapshot을 통해 현재 스트림의 값을 받아올 수 있습니다.
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            /// 그냥 스트림 데이터는 0, 104, 199... 이런식으로 정수형으로 옵니다.
            /// 이 데이터를 _formatTime 함수를 통해 시간 문자열을 만들어줍니다.
            String time = _formatTime(snapshot.data!);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// 현재 시간을 표시합니다.
                Text(
                  time,
                  style: const TextStyle(fontSize: 48.0),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// 스톱워치 시작 or 일시정지 버튼
                    FloatingActionButton(
                      onPressed: () {
                        /// 스톱워치가 실행중이면 stop 기능을 하고, 아니면 start 기능을 수행합니다.
                        setState(() {
                          if (_stopwatch.isRunning) {
                            _stopwatch.stop();
                          } else {
                            _stopwatch.start();
                          }
                        });
                      },
                      child: _stopwatch.isRunning
                          ? Icon(Icons.pause)
                          : Icon(Icons.play_arrow),
                    ),
                    const SizedBox(width: 20.0),

                    /// 스톱워치 리셋 + 중지 버튼
                    FloatingActionButton(
                      onPressed: () {
                        /// 스톱워치를 stop, reset합니다.
                        setState(() {
                          _stopwatch.stop();
                          _stopwatch.reset();
                        });
                      },
                      child: Icon(Icons.stop),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String _formatTime(int? milliseconds) {
    if (milliseconds == null) {
      return '00:00.0';
    }

    /// floor를 통해 내림을 할 수 있습니다.
    int minutes = (milliseconds / 1000 / 60).floor();
    int seconds = ((milliseconds / 1000) % 60).floor();
    int tenths = ((milliseconds / 100) % 10).floor();

    ///padLeft() 메소드는 문자열의 왼쪽을 특정 문자로 채워 지정한 길이에 도달하도록합니다.
    ///이 메소드는 문자열이 지정된 길이보다 작은 경우 왼쪽에 지정된 문자를 채워넣고,
    ///문자열이 지정된 길이와 같거나 긴 경우에는 원래 문자열을 반환합니다.
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}.${tenths.toString()}';
  }
}
