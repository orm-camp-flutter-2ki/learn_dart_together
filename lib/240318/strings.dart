void main() {

  const String hello = 'HELLO';

  // 일부 떼어내기
  print(hello.substring(0,2)); // 출력 결과: HE

  // 일부 치환
  print(hello.replaceAll('LL', 'GG')); // 출력 결과: HEGGO

  // 분리
  final number = '1,2,3';
  final splited = number.split(',');
  splited.forEach((element) {
    print(element);
  });
  // 출력 결과
  // 1
  // 2
  // 3

  // 검색
  print(hello.indexOf('E')); // 출력 결과 : 1
  print(hello.contains('O')); // 출력 결과 : true

  final buffer = StringBuffer('Dart');
  buffer..write(' and ')
  ..write('Flutter');

  print(buffer.toString()); // 출력 결과 : Dart and Flutter
}