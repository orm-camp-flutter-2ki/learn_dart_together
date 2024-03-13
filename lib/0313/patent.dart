import 'package:learn_dart_together/0313/intangibleAsset.dart';

class Patent extends IntangibleAsset {
  String patentNumber; // 특허 내용
  int registrationYear; // 특허 등록 년도

  Patent({
    required super.tradeMark,
    required super.name,
    required super.price,
    required this.patentNumber,
    required this.registrationYear,
  });

  @override
  void assetInfo() {
    // assetInfo(); // error, Stack Overflow
    super.assetInfo(); // super.로 들어가니 에러가 안났다. 다른 곳에서도 override해서 그런걸까?
    print('특허번호:$patentNumber, 특허등록년도:$registrationYear');
  }

  // 특허 년도 경과 메소드
  void patentYear() {
    int yearPatent = DateTime.now().year - registrationYear;
    print('현재년도:${DateTime.now().year}년, 특허등록년도:$registrationYear년');
    print('특허 등록 후 $yearPatent년이 지났습니다.');
  }
}

void main() {
  Patent patent = Patent(
      tradeMark: 'Disney',
      name: '백설공주 특허권',
      patentNumber: '백설공주와 일곱난쟁이 캐릭터',
      price: 1900,
      registrationYear: 2014);

  patent.assetInfo();
  patent.isVisibility(false);
}
