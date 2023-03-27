/// [cascade]
/// cascade를 이용하면 인스턴스 생성 후 바로 메소드 호출을 연속적으로 할 수 있습니다.
/// 이를 통해 임시 변수의 사용이 줄어듦으로 코드가 더 간결해집니다.
/// cascade는 .. 을 이용하여 사용할 수 있습니다.

class Americano {
  String drink = 'americano';

  orderToHot() {
    drink = 'hot americano';
  }

  orderToCold() {
    drink = 'cold americano';
  }
}

main() {
  // none-cascade 방식으로 hot americano를 호출해봅시다.
  var americano = Americano();
  americano.orderToHot();
  print(americano.drink); // hot americano

  // cascade 방식으로 hot americano를 호출해봅시다.
  var hotAmericano = Americano()..orderToHot();
  print(hotAmericano.drink); // hot americano
}
