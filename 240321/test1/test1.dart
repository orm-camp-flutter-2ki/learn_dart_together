
import 'dart:io';

void main(){

//1. sample.csv 파일을 읽어와서 "한석봉" 이라는 문자열이 있는지 찾고,
//  있다면 sample_copy.csv 파일에 "김석봉으로 수정하는 함수를 작성하시오.
//  (async -await 사용할 것)


newSukbong();
readSukbong();
copySukbong();




}
// 새 sample파일 생성
Future newSukbong() async {
  await File("lib/240321/test1/sample.csv")
      .writeAsString('1, 홍길동, 30\n2, 한석봉, 20');
}
// 한석봉이 있는지 찾기
Future readSukbong() async {
  await File("lib/240321/test1/sample.csv").readAsString().then((file) {
    print(file);
  }).catchError((error) {
    print('찾는 파일이 없습니다.');
  });
}
// 파일을 복사하고 파일 내용 수정
Future copySukbong() async {
  await File("lib/240321/test1/sample.csv")
      .copySync("lib/240321/test1/sample2.csv")
      .writeAsString("1, 홍길동, 30\n2, 김석봉, 20");
}