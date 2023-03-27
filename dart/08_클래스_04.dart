/// [interface]
/// interface는 클래스의 모양새를 정의할 수 있습니다.
/// 클래스와 implements를 이용하여 interface를 생성할 수 있습니다.
/// 구현체(class)는 다수의 인터페이스를 이용할 수 있습니다.
/// 이 때, interface에 있는 속성와 메소드를 구현체에서 재정의하지 않으면 오류가 발생합니다.
/// interface에 없는 속성과 메소드를 구현체에서 정의할 수 있지만, 권장되지는 않습니다.

class Person {
  String name = '';
  void greeting() {}
}

class Student {
  String school = "";
  void greetingToTeacher() {}
}

class PersonA implements Person, Student {
  // Person와 Student라는 인터페이스를 이용하여 PersonA를 구현합니다.
  // 이 때, Person과 Student 안에 있는 메소드와 속성을 재정의해주어야 합니다.
  @override
  String name = "사람 A";

  @override
  String school = 'oo학교';

  @override
  void greeting() {
    print('안녕하세요! $name입니다!');
  }

  @override
  greetingToTeacher() {
    print('선생님! 반갑습니다!');
  }
}

main() {
  PersonA personA = PersonA();
  personA.greeting();
  personA.greetingToTeacher();
}
