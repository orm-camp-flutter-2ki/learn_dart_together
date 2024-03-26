import 'dart:async';

void main() {
  /// return 타입 설정 가능
  Future<void> todo(int second) async {
    await Future.delayed(Duration(seconds: second)); // 특정 시간 후에 실행
    print('TODO Done in $second seconds');
  }

  print('5 seconds Start');
  todo(5);
  print('3 seconds Start');
  todo(3);
  print('1 seconds Start');
  todo(1);

}

/**
 *  5 seconds Start
    3 seconds Start
    1 seconds Start
    TODO Done in 1 seconds
    TODO Done in 3 seconds
    TODO Done in 5 seconds
 */