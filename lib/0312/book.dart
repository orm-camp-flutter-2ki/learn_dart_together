class Book {
  String title;
  String author;
  String contents;

  Book({
    required this.title,
    required this.author,
    required this.contents,
  });

  void read(bool readNow) {
    readNow ? print('책을 읽고 있습니다.') : print('책을 그만 읽습니다.');
  }

  void bookInfo() {
    print('[책 정보] 제목:$title, 저자:$author, 내용:$contents');
  }
}
