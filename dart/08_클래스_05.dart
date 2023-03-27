/// [abstract]
/// abstract class는 interface처럼 메소드만 정의하고,
/// 메소드 내부 구현은 하위 클래스에 맡깁니다.
/// 인스턴스(객체)를 생성할 수 없기에 하위 클래스에서 내부구현을 필수적으로 해주어야합니다.
/// abstract class를 사용할 때엔 extends나 implements 둘 중 어떠한 키워드로 해도 차이가 없으나,
/// 1개의 abstract class를 표현해야할 땐 extends, 다수라면 implements를 사용합니다.

abstract class Calculator {
  num add(num a, num b);
  num subtract(num a, num b);
  num divide(num a, num b);
  num multiply(num a, num b);
}

class MyCalculator implements Calculator {
  @override
  num add(a, b) {
    return a + b;
  }

  @override
  num subtract(a, b) {
    return a - b;
  }

  @override
  num divide(num a, num b) {
    return a / b;
  }

  @override
  num multiply(num a, num b) {
    return a * b;
  }
}
