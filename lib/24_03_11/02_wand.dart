void main() {}

class Wand {
  String _name;  // 변수 선언 (private)
  double _power;  //

  String get name => _name;  // 이름, mp를 반환하는 게터 함수
  double get power => _power;  //

  Wand({required String name, required double power})  // 생성자; 이름과 mp를 인수로 받는 생성자
      : _power = power,  // 인수로 받은 power값을 _power에 할당
        _name = name;  // 인수로 받은 name 값을 _name에 할당

  // 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  set name(String nameValue) {  // 이름을 설정하는 세터 함수
    if (nameValue.length < 3)  // 만약 이름의 길이가 3보다 작다면 예외발생
      throw Exception("3글자 이상으로 써주세요.");
    _name = nameValue;  // 이름을 설정
  }

  set power(double powerValue) {  // mp를 설정하는 세터 함수
    if (powerValue < 0.5 || powerValue > 100.0)  // 만약 mp 값이 0.5보다 작거나 100보다 크다면 예외발생
      throw Exception("에러입니다.");
    _power = powerValue;  // mp를 설정
  }
}

