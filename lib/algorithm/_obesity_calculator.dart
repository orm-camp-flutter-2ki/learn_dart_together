/*
<다트 비만도 계산기>
// 나이는 정수
나이를 입력하세요.

// 성별은 ‘남자’, ‘여자’
성별을 입력하세요.

// 키는 정수 또는 실수
키를 입력하세요.

// 몸무게는 정수 또는 실수 일 수 있다
몸무게를 입력하세요.

// 신체질량지수 BMI 계산하는 함수를 검색해서
// 작성하고 결과값을 아래 형식에 맞게 표시.

당신은 (저체중, 정상, 과체중, 비만) 입니다.
*/

import 'dart:io';

void main() {
  int centimeter = 100;

  print('나이를 입력하세요.');
  String ageStr = stdin.readLineSync()!;
  int age = int.parse(ageStr);

  print('성별을 입력하세요.');
  String gender = stdin.readLineSync()!;

  print('키를 입력하세요.');
  String heightStr = stdin.readLineSync()!;
  num centimeterHeight = num.parse(heightStr);
  num meterHeight = centimeterHeight / 100;

  print('몸무게를 입력하세요.');
  String weightStr = stdin.readLineSync()!;
  num weight = num.parse(weightStr);

  num bmi = weight / (meterHeight * meterHeight);

  if (bmi > 0 && bmi < 18.5) {
    print('당신은 저체중 입니다.');
  } else if (bmi >= 18.5 && bmi < 23) {
    print('당신은 정상 입니다.');
  } else if (bmi >= 23 &&  bmi < 25) {
    print('당신은 과체중 입니다.');
  } else if (bmi >= 25 && bmi < 30) {
    print('당신은 비만 입니다.');
  }
}