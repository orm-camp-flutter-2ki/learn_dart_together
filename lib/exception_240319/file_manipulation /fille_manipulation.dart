import 'dart:io';

void copy(String source, String target){
  final sourceFile = File('save.txt');
  final targetFile = File('target.txt');

}

void main(){
  // 파일 열기
  final myFile = File('save.txt');
  // 파일 내용 쓰기 (덮어쓰기)
  myFile.writeAsStringSync('Hello, world!');
  myFile.writeAsStringSync('Hello, World Cup!');
  // 파일 내용 쓰기 (이어쓰기)
  myFile.writeAsStringSync('\nAgain World 2002', mode: FileMode.append);


}