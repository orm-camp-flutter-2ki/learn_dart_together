import 'package:learn_dart_together/0313/tangibleAsset.dart';

class Book extends TangibleAsset {
  String title;
  String author;
  String isbn;
  String contents;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.title,
    required this.author,
    required this.isbn,
    required this.contents,
  });

  void read(bool readNow) {
    if (readNow) {
      print('책을 읽고 있습니다.');
      return;
    }
    print('책을 그만 읽습니다.');
  }

  @override
  void assetInfo() {
    super.assetInfo();
    print('[책 정보] 제목:$title, 저자:$author, 내용:$contents, ISBN: $isbn');
  }
}

void main() {
  Book book = Book(
      name: 'book',
      price: 24,
      color: 'yellow',
      title: '두 고양이의 대모험',
      author: '순덕베티',
      contents: '모험이야기',
      isbn: '000-0-0000-0000-0');

  book.assetInfo();
  book.read(true);
  book.buy(true);
  book.isVisibility(true);
}
