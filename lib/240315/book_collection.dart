class Book implements Comparable<Book>{
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  @override
  int compareTo(Book other) {
    return publishDate.compareTo(other.publishDate);
    throw UnimplementedError();
  }


}
