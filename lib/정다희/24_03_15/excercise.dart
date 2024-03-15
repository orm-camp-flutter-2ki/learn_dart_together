class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate.year == other.publishDate.year &&
          publishDate.month == other.publishDate.month &&
          publishDate.day == other.publishDate.day;

  @override
  // 비트연산자로도 할 수 있음 ^

  int get hashCode => Object.hash(title.hashCode, publishDate.year.hashCode,
      publishDate.month.hashCode, publishDate.day.hashCode);

  Book copyWith() {
    return Book(
        title: title,
        comment: comment,
        publishDate:  publishDate);
  }
}

void main() {
  List<Book> list = [];
  //코드를 더 짧게 써보자
  Book harryPotter1 =
      Book(title: "해리포터1", comment: "재밌음", publishDate: DateTime(2024, 1, 1));
  Book harryPotter2 =
      Book(title: "해리포터2", comment: "재밌음", publishDate: DateTime(2024, 1, 2));
  Book harryPotter3 =
      Book(title: "해리포터3", comment: "재밌음", publishDate: DateTime(2024, 1, 3));
  Book harryPotter4 =
      Book(title: "해리포터4", comment: "재밌음", publishDate: DateTime(2024, 1, 4));

  list.add(harryPotter4);
  list.add(harryPotter3);
  list.add(harryPotter2);

  list.add(harryPotter1);

  list.sort((a, b) => a.publishDate.compareTo(b.publishDate));


  for (Book book in list) {
    print('${book.title}: ${book.publishDate}');
  }

  Book twinHarry = harryPotter1.copyWith();
  print(twinHarry.title);
  print(twinHarry.comment);
  print(twinHarry.publishDate);

  print(twinHarry == harryPotter1);
}

//제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단한다
//Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
//deep copy 를 위한 copyWith() 메서드를 제공한다
