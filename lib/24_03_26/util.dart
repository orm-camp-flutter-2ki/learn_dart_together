import 'dart:io';

StringBuffer resultCode = StringBuffer();

void wr(String str) => resultCode.write('$str');
void wrnl(String str) => resultCode.write('$str\n');
void space() => resultCode.write('\n');

void main() {
  print('클래스 구현 코드 생성기 V 1.0');
  print('primitive 타입이 아닌 필드의 경우 추가적인 수정이 필요함에 주의하세요!!');
  print('toString(), == hashCode 는 알아서 추가하세욤');
  print('');

  print('클래스명을 문자로 입력하세요.');
  String className = stdin.readLineSync()?? 'Empty';

  print('필드 갯수를 정수로 입력하세요.');
  int fieldCnt = int.parse(stdin.readLineSync()?? '1');

  print('필드타입 필드명을 갯수만큼 입력하세요.');
  print('ex)\nint id\nString name');
  List<List<String>> fields = [];
  for(int i = 0; i < fieldCnt; i++) {
    fields.add((stdin.readLineSync()?? 'dynamic name$i').trim().split(' '));
  }
  print('\n---클래스 코드 생성---\n');

// 클래스명 선언
  wrnl('class $className {');

// 필드 선언
  for (List<String> field in fields) {
    wrnl('final ${field.join(' ')};');
  }
  space();

// 기본 생성자 선언
  wrnl('$className({');
  for (List<String> field in fields) {
    wrnl('required this.${field[1]},');
  }
  wrnl('});');
  space();

// copyWith 생성자 선언
  wrnl('$className.copyWith({');
  wrnl('required $className origin,');
  for (List<String> field in fields) {
    wrnl('${field[0]}? ${field[1]},');
  }
  wr('}) : ');
  wr(fields.map((e) => '${e[1]} = ${e[1]} ?? origin.${e[1]}').join(',\n'));
  wrnl(';');
  space();

// fromJson 생성자 선언
  wrnl('$className.fromJson(Map<String, dynamic> json)');
  wr(': ');
  wr(fields.map((e) => '${e[1]} = json[\'${e[1]}\']').join(',\n'));
  wrnl(';');
  space();

// toJson 메서드 선언
  wrnl('Map<String, dynamic> toJson() => {');
  wr(fields.map((e) => '\'${e[1]}\': ${e[1]}').join(',\n'));
  wrnl('');
  wrnl('};');

// 클래스 마무리
  wrnl('}');
  print(resultCode.toString());
}