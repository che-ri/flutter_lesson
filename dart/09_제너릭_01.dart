/// [generic]
/// generic은 <>를 이용해 표현할 수 있습니다.
/// 이를 통해 List나 Map 등의 컬렉션 타입을 선언 할 때
/// 내부 요소들의 타입을 명시할 수 있습니다.

class CatModel {
  String name;
  int age;

  CatModel({required this.name, required this.age});
}

main() {
  List<String> names = ['구름', '먼지'];
  Map<String, int> ages = {'구름': 3, '먼지': 5};

  List<CatModel> cats = [
    CatModel(name: '구름', age: 3),
    CatModel(name: '먼지', age: 5)
  ];
}
