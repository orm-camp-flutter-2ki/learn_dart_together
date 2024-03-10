
/*
두 정수를 입력받아 비교하여 더 큰 수를 출력하는 프로그램
두 수가 같은 경우는 eq를 출력

입력
정수 a와 b가 1개의 공백으로 구분되어 입력 됨.
a b
*/

// 예1)
// 입력
// 10 20
// 출력
// 20

// 예2)
// 입력
// 3 3
// 출력
// eq

void main(){
  print(compare(10,20));
  print(compare(3,3));
}
String compare(a,b){
  return a > b == true ? a.toString() : b > a == true ? b.toString() : 'eq';
}