import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Book extends TangibleAsset {
  String author;
  String genre;
  String? isbn;

  /// [고민의 흔적]
  ///  생성자의 regular constructor body를 사용하여 부모 클래스의 속성들을 초기화
  ///  이 방식은 이미 부모 클래스에 필드를 초기화 하는 코드와 중복이 되므로 사용성이 좋진 않다.
  ///  (왜냐면 이미 부모 클래스에서 named parameter 로 선언을 해 놓은 상태이기 때문에.)
  ///  Book.another 생성자 처럼 변수에 파라미터 값을 받아서 전달 해주는 게 더 명확하다.
  ///  근데 abstract class에서 필드를 named로 하고 말고는 자유겠지..? 흠
  ///  [==> 결론 !!] Book.another 생성자와 이 생성자는 문법만 다르고 같은 생성자다.
  ///  Book.another 가 옛날 버전 문법임.

  Book(
    this.isbn,
    super.color,
    super._weight, {
    required this.author,
    required this.genre,
    super.name = '',
    super.price = 0,
  });

  // initializer list를 사용하여 초기화. 예전 문법
  Book.another(
    this.isbn, {
    required this.author,
    required this.genre,
    String color = '',
    double weight = 0,
    String name = '',
    int price = 0,
  }) : super(
          color,
          weight,
          name: name,
          price: price,
        );

  // 대출 불가 도서. isbn이 없다.
  Book.referenceBook(
    super.color,
    super._weight, {
    required this.author,
    required this.genre,
    required super.name,
    required super.price,
  });

  void read() {
    print('$author 작가의 $name을 읽었다.');
  }
}

class Fiction extends Book {
  String subgenre;

  Fiction(
    this.subgenre,
    super.isbn,
    super.color,
    super._weight, {
    required super.name,
    required super.price,
    required super.author,
    required super.genre,
  });
}

class NonFiction extends Book {
  String subject;

  NonFiction(
    this.subject,
    super.isbn,
    super.color,
    super._weight, {
    required super.name,
    required super.price,
    required super.author,
    required super.genre,
  });
}
