import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Book extends TangibleAsset {
  String author;
  String genre;
  String isbn;

  // initializer list를 사용하여 초기화
  Book({
    required this.author,
    required this.genre,
    required this.isbn,
    String name = '',
    int price = 0,
    String color = '',
  }) : super(name: name, price: price, color: color);

  // 생성자의 regular constructor body를 사용하여 부모 클래스의 속성들을 초기화
  // 이 방식은 이미 부모 클래스에 필드를 초기화 하는 코드와 중복이 되므로 사용성이 좋진 않다.
  // (왜냐면 이미 부모 클래스에서 named parameter 로 선언을 해 놓은 상태이기 때문에.)
  // 위 생성자 처럼 변수에 파라미터 값을 받아서 전달 해주는 게 더 명확하다.
  Book.another(
    this.author,
    this.genre,
    this.isbn, {
    super.name = '',
    super.price = 0,
    super.color = '',
  });

  // 부모 클래스의 필드를 필수로 하고 named로 넣고 싶을 경우에 이렇게 한다.
  Book.another2({
    required this.author,
    required this.genre,
    required this.isbn,
    required super.name,
    required super.price,
    required super.color,
  });

  void read() {
    print('$author 작가의 $name을 읽었다.');
  }
}

class Fiction extends Book {
  String subgenre;

  Fiction(
    this.subgenre, {
    required super.name,
    required super.price,
    required super.color,
    required super.author,
    required super.genre,
    required super.isbn,
  });
}

class NonFiction extends Book {
  String subject;

  NonFiction(
    this.subject,
    String author,
    String genre,
    String isbn, {
    String name = '',
    int price = 0,
    String color = '',
  }) : super(
          name: name,
          price: price,
          color: color,
          author: author,
          genre: genre,
          isbn: isbn,
        );
}
