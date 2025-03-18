import 'dart:io';

String menu(List<String> menu) {
  print('메뉴 목록: ${menu.join(",")}');
  stdout.write('원하는 메뉴를 선택하세요: ');

  while (true) {
    String? input = stdin.readLineSync();

    String? result = menu.where((m) => m == input).firstOrNull;

    if (result != null) {
      return result;
    }
    stdout.write('입력값이 올바르지 않습니다.\n 다시 입력하세요: ');
  }
}
