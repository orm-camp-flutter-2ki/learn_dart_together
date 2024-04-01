import 'dart:io';

StringBuffer resultCode = StringBuffer();
final primitiveType = {
  'int',
  'num',
  'double',
  'String',
  'bool',
  'int?',
  'num?',
  'double?',
  'String?',
  'bool?'
};
final listType = 'List<';
final Map<String, int> typeMap = {};
void wr(String str) => resultCode.write('$str');

void wrnl(String str) => resultCode.write('$str\n');

void space() => resultCode.write('\n');

void override() => resultCode.write('@override\n');

int typeCheck(String type) {
  // 프리미티브 타입
  if (primitiveType.contains(type)) return 1;
  // List 타입 X, 클래스 타입
  if (!type.startsWith(listType)) return 2;
  // List의 element가 프리미티브 타입
  if (primitiveType.contains(getInstanceType(type))) return 3;
  // List의 element가 클래스 타입
  return 4;
}

String getInstanceType(String type) => type.substring(5, type.length - 1);

void main() {
  print('클래스 구현 코드 생성기 V 1.2');
  print('Dart built-in 타입이 아닌 필드의 경우 추가적인 수정이 필요함에 주의하세요!!');
  print('fromJson()은 생성자로 구현됨에 주의하세요!!');
  print('List 타입은 각 원소에 대해 fromJson, toJson, ==, hashCode가 구현됩니다.');
  print('이중 리스트 타입의 필드는 정상적으로 처리되지 않습니다.');
  print('');

  print('클래스명을 문자로 입력하세요.');
  String className = stdin.readLineSync() ?? 'Empty';

  print('필드 갯수를 정수로 입력하세요.');
  int fieldCnt = int.parse(stdin.readLineSync() ?? '1');

  print('필드타입 필드명을 갯수만큼 입력하세요.\nnullable 타입은 non-nullable 타입으로 변경됩니다.');
  print('ex) String? name;');
  List<List<String>> fields = [];
  for (int i = 0; i < fieldCnt; i++) {
    var tmp = (stdin.readLineSync() ?? 'dynamic name$i')
        .trim()
        .replaceAll('?', '')
        .replaceAll(';', '')
        .split(' ');
    fields.add(tmp);
    typeMap[tmp[0]] = typeCheck(tmp[0]);
  }
  //
  print('직접 구현한 클래스에 대해 fromJson/toJson 연결 여부를 입력하세요. (Y/N)');
  print('ex) company = Company.fromJson(json[\'company\'])');
  print('   \'company\': company.toJson()');
  bool jsonConnection = (stdin.readLineSync() ?? 'N') == 'Y' ? true : false;

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
  for ((int, List<String>) field in fields.indexed) {
    switch (typeMap[field.$2[0]]) {
      case 1:
        wr('${field.$2[1]} = json[\'${field.$2[1]}\']');
        break;
      case 2:
        if (jsonConnection) {
          wr('${field.$2[1]} = ${field.$2[0]}.fromJson(json[\'${field.$2[1]}\'])');
        } else {
          wr('${field.$2[1]} = json[\'${field.$2[1]}\']');
        }
        break;
      case 3:
        wr('${field.$2[1]} = json[\'${field.$2[1]}\']');
        break;
      case 4:
        if (jsonConnection) {
          wr('${field.$2[1]} = (json[\'${field.$2[1]}\'] as List).map((e) =>  ${getInstanceType(field.$2[0])}.fromJson(e)).toList()');
        } else {
          wr('${field.$2[1]} = json[\'${field.$2[1]}\']');
        }
        break;
      default:
        break;
    }
    wrnl((field.$1 != fields.length - 1) ? ',' : ';');
  }
  space();

  // toJson 메서드 선언
  wrnl('Map<String, dynamic> toJson() => {');
  for ((int, List<String>) field in fields.indexed) {
    switch (typeMap[field.$2[0]]) {
      case 1:
        wr('\'${field.$2[1]}\': ${field.$2[1]}');
        break;
      case 2:
        if (jsonConnection) {
          wr('\'${field.$2[1]}\': ${field.$2[1]}.toJson()');
        } else {
          wr('\'${field.$2[1]}\': ${field.$2[1]}');
        }
        break;
      case 3:
        wr('\'${field.$2[1]}\': ${field.$2[1]}');
        break;
      case 4:
        if (jsonConnection) {
          wr('\'${field.$2[1]}\': ${field
              .$2[1]}.map((e) =>  e.toJson()).toList()');
        } else {
          wr('\'${field.$2[1]}\': ${field.$2[1]}');
        }
        break;
      default:
        break;
    }
    wrnl((field.$1 != fields.length - 1) ? ',' : '');
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
  for ((int, List<String>) field in fields.indexed) {
    switch (typeMap[field.$2[0]]) {
      case 1 || 2:
        wr('${field.$2[1]} == other.${field.$2[1]}');
        break;
      case 3 || 4:
        wr('ListEquality().equals(${field.$2[1]}, other.${field.$2[1]})');
        break;
      default:
        break;
    }
    wrnl((field.$1 != fields.length - 1) ? ' &&' : ';');
  }
  space();

  // hashCode
  override();
  wrnl('int get hashCode =>');
  for ((int, List<String>) field in fields.indexed) {
    switch (typeMap[field.$2[0]]) {
      case 1 || 2:
        wr('${field.$2[1]}.hashCode');
        break;
      case 3 || 4:
        wr('${field.$2[1]}.fold(0, (prev, e) => prev ^ e.hashCode)');
        break;
      default:
        break;
    }
    wrnl((field.$1 != fields.length - 1) ? ' ^' : ';');
  }

  // 클래스 마무리
  wrnl('}');
  print(resultCode.toString());
}
