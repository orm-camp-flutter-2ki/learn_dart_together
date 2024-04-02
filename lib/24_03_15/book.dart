class Book {
  int id;
  String title;
  DateTime publishDate;

  Book({
    required this.id,
    required this.title,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();



  Book copyWith(
      {int? id, String? title, String? comment, DateTime? publishDate}) {
    return Book(
        id: id ?? this.id,
        title: title ?? this.title,
        publishDate: publishDate);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode =>
      id.hashCode ^ title.hashCode ^ publishDate.hashCode;

  @override
  String toString() {
    return 'Book{id: $id, title: $title, publishDate: $publishDate}';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'publishDate': publishDate.toString(),
    };
  }

  factory Book.fromJson(Map<String, dynamic> map) {
    return Book(
      id: map['id'] as int,
      title: map['title'] as String,
      publishDate: map['publishDate'] as DateTime,
    );
  }
}
