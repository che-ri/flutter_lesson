import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model2/weather.dart';
import 'package:weather_app/theme/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weatherData;
  bool isLoading = false;

  getWeatherData() async {
    /// 중간에 에러가 생기면(네트워크 에러, 권한 에러 등...) 앱이 멈춰버릴 수 있으므로, try-catch 구문으로 전체 로직을 감싸줍니다.
    try {
      /// 본인의 API KEY를 넣어주어야 합니다.
      final API_KEY =
          'Weather Api의 My Account/Accounts 페이지에서 자신의 API Key를 복사하여 이 곳에 넣어주세요';
      final location = 'Seoul';

      /// 로딩 상태로 변경합니다.
      setState(() {
        isLoading = true;
      });

      final response = await http.get(Uri.parse(
          'http://api.weatherapi.com/v1/current.json?key=${API_KEY}&q=${location}'));

      /// statusCode가 200이면 API가 성공적으로 요청된 것입니다.
      if (response.statusCode == 200) {
        final jsonData = JsonDecoder().convert(response.body);
        final Weather jsonToData = Weather.fromJson(jsonData);
        setState(() {
          weatherData = jsonToData;
        });
      } else {
        print('데이터를 불러오지 못했습니다.');
      }
    } catch (e) {
      print('데이터를 불러오지 못했습니다.');
    } finally {
      /// 로딩 상태를 취소합니다.
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    /// 위젯이 생성되고 난 다음, 날씨 데이터를 받아옵니다.
    getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    if (weatherData == null && isLoading == true) {
      /// 데이터를 불러오는 중일 때 보여지는 화면입니다.
      return Scaffold(body: Center(child: Text('데이터를 불러오는 중입니다.')));
    }

    return Scaffold(
        body: Container(
            color: ColorTheme.black,
            padding: EdgeInsets.all(20),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Text(
                    '현재 날씨',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: ColorTheme.white),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: weatherData?.current?.condition?.icon == null
                          ? SizedBox(
                              width: 200,
                              height: 200,
                            )
                          : Image.network(
                              weatherData!.current!.condition!.icon!,
                              width: 200,
                              height: 200)),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ColorTheme.black2),
                    child: Column(
                      children: [
                        /// 온도

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              margin: EdgeInsets.only(right: 16),
                              padding: EdgeInsets.all(16),
                              child: Text(
                                '온도',
                                style: TextStyle(color: ColorTheme.grey),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: ColorTheme.orange, width: 3))),
                            ),
                            Container(
                                width: 200,
                                child: Text(
                                  '${weatherData?.current?.tempC?.toString() ?? ""}º',
                                  style: TextStyle(color: ColorTheme.white),
                                ))
                          ],
                        ),

                        /// 국가
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              margin: EdgeInsets.only(right: 16),
                              padding: EdgeInsets.all(16),
                              child: Text(
                                '국가',
                                style: TextStyle(color: ColorTheme.grey),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: ColorTheme.yellow, width: 3))),
                            ),
                            Container(
                                width: 200,
                                child: Text(
                                  weatherData?.location?.country ?? "",
                                  style: TextStyle(color: ColorTheme.white),
                                ))
                          ],
                        ),

                        /// 도시
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              margin: EdgeInsets.only(right: 16),
                              padding: EdgeInsets.all(16),
                              child: Text(
                                '도시',
                                style: TextStyle(color: ColorTheme.grey),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: ColorTheme.lime, width: 3))),
                            ),
                            Container(
                                width: 200,
                                child: Text(
                                  weatherData?.location?.name ?? "",
                                  style: TextStyle(color: ColorTheme.white),
                                ))
                          ],
                        ),

                        /// 시간
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              margin: EdgeInsets.only(right: 16),
                              padding: EdgeInsets.all(16),
                              child: Text(
                                '시간',
                                style: TextStyle(color: ColorTheme.grey),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: ColorTheme.mint, width: 3))),
                            ),
                            Container(
                                width: 200,
                                child: Text(
                                  weatherData?.location?.localtime ?? "",
                                  style: TextStyle(color: ColorTheme.white),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ]))));
  }
}
