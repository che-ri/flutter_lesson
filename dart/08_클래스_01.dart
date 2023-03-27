/// [extends]
/// extends 키워드를 통해 클래스는 다른 클래스로를 상속받을 수 있으며,
/// 이를 통해 상속된 클래스의 모든 속성(attribute)과
/// 메소드(method)를 사용할 수 있습니다

class Animal {
  String type = "동물";
}

class Cat extends Animal {
  // Cat 클래스는 Animal 클래스의 메소드와 속성들을 상속받습니다.
  String name = "고양이";

  sound() {
    print('${name}은 야옹!');
  }
}

main() {
  // Cat 클래스에 대해 인스턴스(객체)를 만듭니다.
  var cat = Cat();

  // Cat 클래스의 sound 매소드를 사용할 수 있습니다.
  cat.sound();

  // Cat 클래스는 Animal 클래스를 상속받았기 때문에
  // Animal 클래스의 속성인 type을 사용할 수 있습니다.
  print(cat.type);
}
