import '05_intangibleAsset.dart';

class Patent extends IntangibleAsset {
  int patNum;

  Patent({required super.name, required super.value, required this.patNum});

  @override
  printInfo() {
    print('이름: $name, 가치: \$$value, 특허번호: $patNum');
  }
}