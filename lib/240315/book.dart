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
          title == other.title &&
          publishDate.year == other.publishDate.year &&
          publishDate.month == other.publishDate.month &&
          publishDate.day == other.publishDate.day;

  // 기존코드
  /*
    bool operator ==(Object other) =>
      identical(this, other) ||
          other is Book &&
              title == other.title &&
              publishDate == other.publishDate;
    요 버전이였는데 , 요렇게 하면 Test code 생성자를  publishDate: DateTime(2024, 1, 1, 1)
    이렇게 만들면, false 로 나와 test 실패됨! why?
    날짜와 시간이 다르기 때문에 false 됨 하지만 날짜만 같으면 같은 책이여야 하기때문에
    시간까지 비교해주는 것이 옮은 test 방법임으로 publishDate type을 적을때,
    지정한 값까지 확실하게 type 지정하여 test 할것!
   */

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}
