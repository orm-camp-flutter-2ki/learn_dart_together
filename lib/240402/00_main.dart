import 'dart:io';

void main() {
  bool running = true;

  while (running) {
    // 메뉴 출력
    print('<메뉴>');
    print('1. 회원조회');
    print('2. 회원등록');
    print('3. 회원수정');
    print('4. 회원삭제');
    print('5. 삭제취소');
    print('6. 뒤로');

    // 사용자 입력 받기
    stdout.write('원하는 메뉴를 선택하세요: ');
    String? input = stdin.readLineSync();

    // 선택된 메뉴에 따라 동작 수행
    switch (input) {
      case '1':
        print('회원조회를 선택했습니다.');
        break;
      case '2':
        print('회원등록을 선택했습니다.');
        break;
      case '3':
        print('회원수정을 선택했습니다.');
        break;
      case '4':
        print('회원삭제를 선택했습니다.');
        break;
      case '5':
        print('삭제취소를 선택했습니다.');
        break;
      case '6':
        print('뒤로 가기를 선택했습니다.');
        running = false; // 프로그램 종료
        break;
      default:
        print('잘못된 입력입니다. 다시 선택해주세요.');
    }

    // 메뉴 출력 후 한 줄 띄어주기
    print('');
  }
}
