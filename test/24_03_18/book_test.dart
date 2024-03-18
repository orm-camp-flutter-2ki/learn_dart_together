import 'package:learn_dart_together/24_03_15/book.dart';
import 'package:test/test.dart';

void main(){
  test('제목과 출간일이 같으면 같은 책으로 판단',(){

    Book book1 = Book(title:'책이름',comment: '코멘트',publishDate: DateTime(2024,03,15));
    Book book2 = Book(title:'책이름',comment: '코멘트',publishDate: DateTime(2024,03,15));

    expect(book1 == book2, true);


  });
}