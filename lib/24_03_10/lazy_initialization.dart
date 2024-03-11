import 'dart:io';

final topLevel = Test(); // Top-level 변수 -> 자동으로 지연 초기화

class Test {
  final DateTime classInitializedTime;

  Test() : classInitializedTime = DateTime.now();

  String getInitializedTime() => classInitializedTime.minSec();
}

class CheckInitTime {
  late final DateTime classInitializedTime; // 컴파일러에게 이후(지연) 초기화 될 것을 명시
  static final Test classVariable = Test(); // static이기 때문에 자동으로 지연 초기화
  final notLateVariable = Test(); // 일반적인 선언 및 초기화
  late final Test lateVariable = Test(); // 지연 초기화

  CheckInitTime() : classInitializedTime = DateTime.now();

  String getDetial() => """
    클래스 초기화: ${classInitializedTime.minSec()}
    일반 변수 초기화: ${notLateVariable.getInitializedTime()}
    Class Variable(static): ${classVariable.getInitializedTime()}
    Late Variable: ${lateVariable.getInitializedTime()}
  """.replaceAll("    ", "");
}

void main() {
  print("Main 함수 실행: ${DateTime.now().minSec()}");

  print(CheckInitTime.classVariable.getInitializedTime());

  print("\n2초 대기\n");
  final ci = CheckInitTime();
  sleep(const Duration(seconds: 2));

  print("Top-level Variable: ${topLevel.getInitializedTime()}");
  print(ci.getDetial());
}

// DateTime의 시,분,초만 출력하는 확장 함수
extension MinSec on DateTime {
  String minSec() {
    String str = toIso8601String();
    int idx = str.indexOf('T');
    return str.substring(idx + 1, idx + 9);
  }
}
