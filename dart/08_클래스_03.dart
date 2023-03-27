/// [mixin]
/// mixin은 with이라는 키워드로 만들 수 있습니다.
/// mixin은 extends 처럼 클래스의 기능을
/// 확장시킬 때 사용합니다.
/// extends에서는 1개의 클래스만 확장시킬 수 있으나,
/// mixin은 다수의 클래스로 확장시킬 수 있습니다.

class Hobby {
  var hobby = 'piano';
}

class Greeting {
  printGreeting() {
    print('반갑습니다. 여러분!');
  }
}

class Iam with Hobby, Greeting {
  // Hobby와 Greeting 클래스로 확장합니다.

  var name = '지영';
}

main() {
  // Iam 클래스의 인스턴스를 생성합니다.
  var iam = Iam();

  print(iam.name); // 지영
  print(iam.hobby); // piano
  iam.printGreeting(); // 반갑습니다. 여러분!
}
