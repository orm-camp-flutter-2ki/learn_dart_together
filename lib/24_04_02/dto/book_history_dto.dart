class BookHistoryDto {

  int? id;
  int? bookId;
  int? userId;
  String? rentDate;
  bool? isExtend;

  BookHistoryDto({
    this.id,
    this.bookId,
    this.userId,
    this.rentDate,
    this.isExtend,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bookId': bookId,
      'userId': userId,
      'rentDate': rentDate,
      'isExtend': isExtend,
    };
  }

  factory BookHistoryDto.fromJson(Map<String, dynamic> map) {
    return BookHistoryDto(
      id: map['id'] as int,
      bookId: map['bookId'] as int,
      userId: map['userId'] as int,
      rentDate: map['rentDate'] as String,
      isExtend: map['isExtend'] as bool,
    );
  }
}