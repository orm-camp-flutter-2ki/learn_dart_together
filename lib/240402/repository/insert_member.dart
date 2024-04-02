import 'dart:convert';
import 'dart:io';

import 'package:intl/intl.dart';

class InsertMember {
  void insertInfo() {
    String currentTime = getCurrentTime();
    print('이름을 입력하세요:');
    String name =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!) ?? '';

    print('주소를 입력하세요:');
    String addr =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!) ?? '';

    print('연락처를 입력하세요:');
    String phone =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!) ?? '';

    print('생일를 입력하세요:');
    String birthDay =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!) ??
            '19990101';

    // CSV 파일에 쓰기
    writeToCSV([currentTime, name, addr, phone, birthDay]);
  }

  void writeToCSV(List<String> data) {
    File file = File('member_data.csv');
    String csvContent = data.join(',') + '\n'; // 데이터를 쉼표로 구분하고 줄 바꿈 추가

    // 파일 쓰기
    file.writeAsStringSync(csvContent, mode: FileMode.append, encoding: utf8);

    print('데이터가 CSV 파일에 저장되었습니다.');
  }

  String getCurrentTime() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy/MM/dd');
    return formatter.format(now);
  }
}

void main() {
  InsertMember().insertInfo();
}
