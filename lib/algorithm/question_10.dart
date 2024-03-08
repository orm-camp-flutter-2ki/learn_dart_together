import 'dart:io';

/// <다트 비만도 계산기>
/// 나이는 정수
/// 나이를 입력하세요.
/// 성별은 ‘남자’, ‘여자’
/// 성별을 입력하세요.
/// 키는 정수 또는 실수
/// 키를 입력하세요.
/// 몸무게는 정수 또는 실수 일 수 있다
/// 몸무게를 입력하세요.
/// 신체질량지수 BMI 계산하는 함수를 검색해서
/// 작성하고 결과값을 아래 형식에 맞게 표시.
/// 당신은 (저체중, 정상, 과체중, 비만) 입니다.

void main() {
  print('나이를 입력하세요.');
  int age = checkAge();
  print('성별을 입력하세요.');
  String gender = checkGender();
  print('키를 입력하세요.');
  String inputHeight = stdin.readLineSync()!;
  print('몸무게를 입력하세요.');
  String inputWeight = stdin.readLineSync()!;

  num height = num.parse(inputHeight);
  num weight = num.parse(inputWeight);

  calculateBmi(age: age, weight: weight, height: height, gender: gender);
}

void calculateBmi(
    {int age = 10, String gender = '남자', num height = 150, num weight = 50}) {
  // 신체질량지수(BMI) = 체중(kg) / [신장(m)]2
  num bmi = weight / (height / 100 * height / 100);
  String result = '';

  // 저체중	18.5미만 ,정상	18.5이상 ~ 22.9이하, 과체중	23이상 ~ 24.9이하,
  if (bmi < 18.5) {
    result = '저체중';
  } else if (18.5 <= bmi && bmi <= 22.9) {
    result = '정상';
  } else if (23 <= bmi && bmi <= 24.9) {
    result = '과체중';
  } else if (bmi > 25) {
    result = '비만';
  }
  print('당신은 $result 입니다.');
}



int checkAge() {
  String inputAge = stdin.readLineSync()!;
  num age = num.parse(inputAge);

  if (age is int) {
    return int.parse(inputAge);
  }
  print('올바른 나이를 입력하세요.');
  return checkAge();
}

String checkGender() {
  String gender = stdin.readLineSync()!;

  if (gender != '남자' && gender != '여자') {
    print('올바른 성별이 아닙니다. 남자 또는 여자로 입력하세요.');
    return checkGender();
  }

  return gender;
}
