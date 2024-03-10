import 'dart:io';

/*
당신의 1,2,3,4,5 의 숫자가 적힌 5종류의 카드를 모으고 있습니다
4번째까지 모여서 1장만 더 모으면 되는 상황에 카드가 섞여 버렸습니다.
4장의 카드 정보는 줄 바꿈으로 구분하여 입력되므로 1~5의 카드 중 부족한 카드의 숫자를 출력합니다.
*/

//엽력
//c_1
//c_2
//c_3
//c_4

//출력
//4개의 카드 정보는 줄바꿈으로 구분하여 입력되므로 1~5의 카드 중 부족한 카드의 숫자를 출력합니다.

// 예1)
// 입력
// 1
// 3
// 2
// 5
// 출력
// 4

// 예2)
// 입력
// 4
// 3
// 2
// 1
// 출력
// 5

void main(){
  print(guessNumber());
}
int guessNumber(){
  int addNum = 0;
  for(int i=1;i<5;i++){
    int card = int.parse(stdin.readLineSync()!.substring(2));
    addNum += card;
  }
  int result = 15-addNum;
  return result;
}