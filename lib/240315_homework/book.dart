// [!] 다음 동작을 할 수 있도록 Book 클래스 수정
//    1. 제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단
//    2. Book 인스턴스를 담고 있는 컬렉션에 대해 sort()를 수행하여 출간일이 오래된 순서대로 정렬
//    3. deep copy를 위한 copyWith() 메서드를 제공

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
  int get hashCode => title.hashCode ^ publishDate.hashCode;
}

void main() {
  final now = DateTime.now();
  final now2 = DateTime.now();
  print(now.hashCode);
  print(now2.hashCode);
  print(now == now2);
}
