import 'dart:io';

StringBuffer resultCode = StringBuffer();
final notClassType = {'int', 'num', 'double', 'String', 'List', 'Map', 'bool', 'Set', 'int?', 'num?', 'double?', 'String?', 'bool?'};

void wr(String str) => resultCode.write('$str');

void wrnl(String str) => resultCode.write('$str\n');

void space() => resultCode.write('\n');

void override() => resultCode.write('@override\n');

void main() {
  print('클래스 구현 코드 생성기 V 1.1');
  print('Dart built-in 타입이 아닌 필드의 경우 추가적인 수정이 필요함에 주의하세요!!');
  print('fromJson()은 생성자로 구현됨에 주의하세요!!');
  print('');

  print('클래스명을 문자로 입력하세요.');
  String className = stdin.readLineSync() ?? 'Empty';

  print('필드 갯수를 정수로 입력하세요.');
  int fieldCnt = int.parse(stdin.readLineSync() ?? '1');

  print('필드타입 필드명을 갯수만큼 입력하세요.\nnullable 타입은 non-nullable 타입으로 변경됩니다.');
  print('ex) String? name;');
  List<List<String>> fields = [];
  for (int i = 0; i < fieldCnt; i++) {
    fields.add((stdin.readLineSync() ?? 'dynamic name$i').trim().replaceAll('?', '').replaceAll(';', '').split(' '));
  }
  //
  // print('직접 구현한 클래스에 대해 fromJson/toJson 연결 여부를 입력하세요. (Y/N)');
  // print('ex) company = Company.fromJson(json[\'company\'])');
  // print('   \'company\': company.toJson()');
  // bool jsonConnection = (stdin.readLineSync() ?? 'N') == 'Y' ? true : false;
  bool jsonConnection = false;

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
  for ((int, List<String>)field in fields.indexed) {
    if (!notClassType.contains(field.$2[0]) && jsonConnection) {
      wr('${field.$2[1]} = ${field.$2[0]}.fromJson(json[\'${field.$2[1]}\'])');
    } else {
      wr('${field.$2[1]} = json[\'${field.$2[1]}\']');
    }
    String separator = (field.$1 != fields.length - 1) ? ',' : ';';
    wrnl(separator);
  }
  space();

  // toJson 메서드 선언
  wrnl('Map<String, dynamic> toJson() => {');
  for ((int, List<String>)field in fields.indexed) {
    if (!notClassType.contains(field.$2[0]) && jsonConnection) {
      wr('\'${field.$2[1]}\': ${field.$2[1]}.toJson()');
    } else {
      wr('\'${field.$2[1]}\': ${field.$2[1]}');
    }
    String separator = (field.$1 != fields.length - 1) ? ',' : '';
    wrnl(separator);
  }
  wrnl('};');
  space();

  // toString 메서드 선언
  override();
  wrnl('String toString() {');
  wr('return \'$className{');
  wr(fields.map((e) => '${e[1]}: \$${e[1]}').join(', '));
  wrnl('}\';');
  wrnl('}');
  space();

  // ==
  override();
  wrnl('bool operator ==(Object other) =>');
  wrnl('identical(this, other) ||');
  wrnl('other is $className &&');
  wrnl('runtimeType == other.runtimeType &&');
  wr(fields.map((e) => '${e[1]} == other.${e[1]}').join(' &&\n'));
  wrnl(';');
  space();

  // hashCode
  override();
  wrnl('int get hashCode =>');
  wr(fields.map((e) => '${e[1]}.hashCode').join(' ^\n'));
  wrnl(';');

  // 클래스 마무리
  wrnl('}');
  print(resultCode.toString());
}