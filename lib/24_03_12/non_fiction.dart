import 'package:learn_dart_together/24_03_12/book.dart';

class NonFiction extends Book {
  String subject;

  NonFiction({
    required super.title,
    required super.author,
    required super.genre,
    required this.subject
  });

  @override
  void getInformation() {
    print('$title의 작가는 $author 입니다. 장르는 $genre 이고 주제는 $subject 입니다.');
  }
}