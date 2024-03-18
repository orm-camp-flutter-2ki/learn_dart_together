class Book implements Comparable<Book> { // Comparable 인터페이스 구현
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  String _cutDateTime(DateTime publishDate) { // 이렇게 일반 함수로 접근을 해도 될까요?
    return '${publishDate.year}-${publishDate.month}-${publishDate.day}';
  }
  // 아래 방법은 처음 해봤던 방법인데 초(second) 부분이 불특정한 느낌이라 안좋은? 방법 같습니다...
  // String cutLastDatetime(DateTime publishDate) {
  //   return publishDate.toString().substring(0,10);
  // }

  // 요구사항 2번
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else if (other is! Book) {
      return false;
    } else {
      return title == other.title &&
        _cutDateTime(publishDate) == _cutDateTime(other.publishDate);
    }
  }

  @override
  int get hashCode => title.hashCode ^ _cutDateTime(publishDate).hashCode; // 비트 연산자

  // 요구사항 3번
  // 인터넷에 나와있는 JSON encode decode 방법은 안되는 것 같다 ^^
  Book copyWith({String? title, String? comment, DateTime? publishDate}) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate
    );
  }

  @override
  int compareTo(Book other) {
    return publishDate.toString().compareTo(other.publishDate.toString());
  }

  cutDateTime(DateTime publishDate) {}
}