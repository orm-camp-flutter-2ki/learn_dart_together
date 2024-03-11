import 'dart:io';
/*입력 받을 문자열  수와 문자열을 입력받고 출력 포멧에 맞게 출력하세요.

입력포멧
n        //입력 받을 문자열 수
s_1      // 문자열
s_2
..
s_n

출력포멧
Hello s_1,s_2,..s_n.

*/

// 예1)
// 입력
// 2
// Java
// Gino
// 출력
// Hello Java,Gino.
//
// 예2)
// 입력
// 5
// Alice
// Bob
// Carol
// Dave
// Ellen
// 출력
// Hello Alice,Bob,Carol,Dave,Ellen.

void main(){
  print(helloBot());
}

String helloBot(){
  List list = [];
  int times = int.parse(stdin.readLineSync()!);
  for(int i = 1;i<=times;i++){
    String name = stdin.readLineSync()!;
    list.add(name);
  }
  String listJoin = list.join(',');
  String result = 'Hello $listJoin.';
  return result;
}