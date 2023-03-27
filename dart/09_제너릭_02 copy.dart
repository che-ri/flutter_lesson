/// [generic]
/// 제너릭을 활용하면 데이터 타입을 미리 정하지 않고, 실행 시점에 결정할 수 있어서
/// 코드의 재사용성과 타입 안정성을 높일 수 있습니다.
/// 매개변수 <T>는 추상화된 데이터 타입으로,
/// 실제로 사용될 데이터 타입은 이 매개변수에 대한 구체화된 타입으로 대체됩니다.
/// 따라서 이 매개변수를 통해 실행 시점에 데이터 타입을 결정할 수 있습니다.

T whatType<T>(T type) {
  /// 함수에 들어갈 인자값에 무엇이 들어갈지 모를 때 제너릭을 사용할 수 있습니다.
  print('받아온 인자의 타입은 ${type.runtimeType}입니다.');
  return type;
}

class MyList<T> {
  List<T> items = [];

  void add(T item) {
    items.add(item);
  }
}

main() {
  whatType(3); // 받아온 인자의 타입은 int입니다.

  MyList<int> myList = MyList<int>();
  myList.add(1);
  myList.add(2);
  myList.add(3);
  // myList.add('문자열'); <- Error
}
