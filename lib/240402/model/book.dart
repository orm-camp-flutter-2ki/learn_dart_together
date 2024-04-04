import 'package:intl/intl.dart';

enum BookOrder {
  id,
  title,
  author,
  loanDate,
  isLoaned,
  returnDate,
  publishDate,
  isReturned,
}

class Book {
  final num id;
  final String title;
  final String author;
  final String loanDate;
  final bool isLoaned;
  final String returnDate;
  final String publishDate;
  final bool isReturned;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.loanDate,
    required this.isLoaned,
    required this.returnDate,
    required this.publishDate,
    required this.isReturned,
  });

  final _formatter = DateFormat('yyyy/MM/dd');

  String get formattedReturnDate => _formatter.format(DateTime.parse(returnDate));
  String get formattedLoanDate => _formatter.format(DateTime.parse(loanDate));
  String get formattedPublishDate => _formatter.format(DateTime.parse(publishDate));

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          author == other.author &&
          loanDate == other.loanDate &&
          isLoaned == other.isLoaned &&
          returnDate == other.returnDate &&
          publishDate == other.publishDate &&
          isReturned == other.isReturned;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      author.hashCode ^
      loanDate.hashCode ^
      isLoaned.hashCode ^
      returnDate.hashCode ^
      publishDate.hashCode ^
      isReturned.hashCode;

  @override
  String toString() {
    return 'Book{id: $id, title: $title, author: $author, loanDate: $loanDate, isLoaned: $isLoaned, returnDate: $returnDate, publishDate: $publishDate, isReturned: $isReturned}';
  }

  Book copyWith({
    int? id,
    String? title,
    String? author,
    String? loanDate,
    bool? isLoaned,
    String? returnDate,
    String? publishDate,
    bool? isReturned,
  }) {
    return Book(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      loanDate: loanDate ?? this.loanDate,
      isLoaned: isLoaned ?? this.isLoaned,
      returnDate: returnDate ?? this.returnDate,
      publishDate: publishDate ?? this.publishDate,
      isReturned: isReturned ?? this.isReturned,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'loanDate': loanDate,
      'isLoaned': isLoaned,
      'returnDate': returnDate,
      'publishDate': publishDate,
      'isReturned': isReturned,
    };
  }

  factory Book.fromJson(Map<String, dynamic> map) {
    return Book(
      id: map['id'] as int,
      title: map['title'] as String,
      author: map['author'] as String,
      loanDate: map['loanDate'] as String,
      isLoaned: map['isLoaned'] as bool,
      returnDate: map['returnDate'] as String,
      publishDate: map['publishDate'] as String,
      isReturned: map['isReturned'] as bool,
    );
  }
}
