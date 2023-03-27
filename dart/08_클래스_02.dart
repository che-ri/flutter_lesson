/// [override]
/// override 구문을 이용하면,
/// 상위 클래스에서 만든 메소드를 재정의할 수 있습니다.
/// 하위 클래스에서 재정의하지않으면 상위 클래스의 있는
/// 메소드가 호출됩니다.

class Person {
  var age = 0;

  greeting() {
    print('반갑습니다. 여러분!');
  }
}

class Iam extends Person {
  // Person 클래스를 상속받습니다.

  // Iam 클래스의 속성입니다.
  var name = '지영';

  // Person 클래스의 속성을 오버라이딩합니다.
  @override
  var age = 19;

  // Person 클래스의 메소드를 오버라이딩합니다.
  @override
  greeting() {
    print('반갑습니다. ${name}입니다!');
  }
}

main() {
  // Iam 클래스의 인스턴스를 생성합니다.
  var iam = Iam();

  print(iam.name); // 지영
  print(iam.age); // 19
  iam.greeting(); // 반갑습니다. 지영입니다!
}
