import 'package:learn_dart_together/240322_homework/debugtwo.dart';
import 'package:test/test.dart';

void main(){
  test('테스트 이름',(){
    YukymController yukymController = YukymController();
    expect(yukymController.getTyA(),'경오2국'); // 해당 월에 맞는 자시의 국 표시
    expect(yukymController.getTyB(),'갑자5국'); // 해당 월에 맞는 자시의 국 표시
  });
}