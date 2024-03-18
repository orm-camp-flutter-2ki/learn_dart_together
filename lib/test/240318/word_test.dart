import 'package:test/test.dart';
import 'package:learn_dart_together/240318/word.dart';

void main(){
  test('moem Test', () {
    Word word = Word();
    word.word ='banana';
    word.word ='BANANA';
    for(int i =0 ; i<word.word.length ;i++){
      print('${word.word}의 모음은 ${word.isVowel(i)}');
    }
  });
}