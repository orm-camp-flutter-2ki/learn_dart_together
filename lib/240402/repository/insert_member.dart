import 'dart:convert';
import 'dart:io';

import 'package:intl/intl.dart';
import 'package:learn_dart_together/240402/model/member.dart';

class InsertMember {
  String name = '';
  String addr = '';
  String phone = '';
  String birth = '';

  Member insertMember() {
    String currentTime = getCurrentTime();
    print('이름을 입력하세요:');
    name = stdin.readLineSync(encoding: utf8) ?? '';

    print('주소를 입력하세요:');
    addr = stdin.readLineSync(encoding: utf8) ?? '';

    print('연락처를 입력하세요:');
    phone = stdin.readLineSync(encoding: utf8) ?? '';

    print('생일를 입력하세요:');
    String birthDayInput = stdin.readLineSync(encoding: utf8) ?? ''; // 기본값 설정

    birth = birthDayInput.isEmpty ? '19990101' : formatBirthDay(birthDayInput);
    // CSV 파일에 쓰기
    writeToCSV([currentTime, name, addr, phone, birth]);

    if (birthDayInput.isEmpty) {
      // 생일 정보가 비어있을 경우 기본값 '19990101'을 사용
      return Member(name, addr, phone, DateTime(1999, 1, 1));
    } else {
      // 생일 정보가 비어있지 않을 경우에만 처리
      try {
        // 생일 정보를 정수로 파싱하여 연도, 월, 일로 변환하여 회원 객체를 생성
        int year = int.parse(birthDayInput.substring(0, 4)); // 연도 추출
        int month = int.parse(birthDayInput.substring(4, 6)); // 월 추출
        int day = int.parse(birthDayInput.substring(6, 8)); // 일 추출
        return Member(name, addr, phone, DateTime(year, month, day));
      } catch (e) {
        print('올바른 생일 형식이 아닙니다. 기본값으로 설정됩니다.');
        return Member(name, addr, phone, DateTime(1999, 1, 1)); // 기본값 반환
      }
    }
  }

  void writeToCSV(List<String> data) {
    File file = File('member_data.csv');
    String csvContent = data.join(',') + '\n'; // 데이터를 쉼표로 구분하고 줄 바꿈 추가

    // 파일 쓰기
    file.writeAsStringSync(csvContent, mode: FileMode.append, encoding: utf8);

    print('데이터가 CSV 파일에 저장되었습니다.');
  }

  String formatBirthDay(String birthDayInput) {
    // 입력된 생일을 "yyyy/MM/dd" 형식으로 변환
    if (birthDayInput.length == 8) {
      return '${birthDayInput.substring(0, 4)}/${birthDayInput.substring(4, 6)}/${birthDayInput.substring(6)}';
    } else {
      return birthDayInput; // 형식이 이미 "yyyy/MM/dd"와 같으면 변환하지 않고 반환
    }
  }

  String getCurrentTime() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('yyyy/MM/dd');
    return formatter.format(now);
  }
}

void main() {
  InsertMember insertMember = InsertMember();
  insertMember.insertMember();
}
