import 'dart:io';

void main(){
  copy('original.txt','copy.txt');
}
void copy(String source,String target){
  final file = File('lib/240319_homework/$source');
  final copyFile = File('lib/240319_homework/$target');

  file.writeAsStringSync('원하는내용');
  copyFile.writeAsStringSync(file.readAsStringSync());
}