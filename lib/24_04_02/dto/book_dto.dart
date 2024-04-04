class BookDto {

  int? id;
  String? title;
  String? author;
  bool? isAble;
  String? publishDate;

  BookDto({
    this.id,
    this.title,
    this.author,
    this.isAble,
    this.publishDate,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'isAble': isAble,
      'publishDate': publishDate,
    };
  }

  factory BookDto.fromJson(Map<String, dynamic> map) {
    return BookDto(
      id: map['id'] as int,
      title: map['title'] as String,
      author: map['author'] as String,
      isAble: map['isAble'] as bool,
      publishDate: map['publishDate'] as String,
    );
  }
}