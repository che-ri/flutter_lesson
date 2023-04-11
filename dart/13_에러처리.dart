/// [try, catch, finally]
/// 실행 도중 예상치 못한 에러처리를 할 수 있는 구문입니다.
/// try 안에 있는 코드를 일단 실행시키다 에러를 만나면 모든 try 작업을 취소하고
/// catch 안에 있는 로직을 수행합니다.
/// catch는 error와 stack을 인자로 받아올 수 있습니다.
/// error는 현재 에러에 대한 값을 담고 있고,
/// stack은 실제 에러가 난 영역을 담습니다.
/// finally는 로직이 성공됐던 실패됐던 무조건 실행되는 구문입니다.
/// 코드에서 최종적으로 어떤 작업을 실행하고 싶을 때 사용합니다.

main() async {
  try {
    /// 1초뒤 isTrue에 false를 할당합니다.
    final isTrue = await Future.delayed(Duration(seconds: 1), () => false);

    /// isTrue가 false면 에러를 발생시킨다.
    if (isTrue == false) throw Error.safeToString('isTrue가 false입니다!');
  } catch (error, stack) {
    print('catch 에러 내용 : $error');
    print('catch 에러가 난 영역: $stack');
  } finally {
    print('finally : 코드가 끝났습니다.');
  }
}
