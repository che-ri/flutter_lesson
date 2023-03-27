/// [static]
/// static은 클래스에서 사용되는 키워드입니다.
/// 이 키워드를 통해 만들어진 메소드나 속성은 인스턴스가 아닌 클래스 자체에 귀속됩니다.
/// 따라서 인스턴스를 생성하지않더라도 클래스에서 바로 데이터로 접근이 가능합니다.

class Person {
  String name;
  int age;
  static int instanceCount = 0;

  Person({required this.name, required this.age}) {
    instanceCount++;
  }
}

main() {
  Person person1 = Person(name: '지영', age: 9);
  Person person2 = Person(name: '민영', age: 10);

  print('person1의 이름은 ${person1.name}입니다.'); // person1의 이름은 지영입니다.
  print('person2의 이름은 ${person2.name}입니다.'); // person2의 이름은 민영입니다.

  // static 키워드로 생성된 메소드, 속성은 인스턴스 생성없이 바로 클래스로 접근가능합니다.
  print('Person 클래스를 통해서 생성된 instance의 갯수는 ${Person.instanceCount}개 입니다.');
  // Person 클래스를 통해서 생성된 instance의 갯수는 2개 입니다.
}
