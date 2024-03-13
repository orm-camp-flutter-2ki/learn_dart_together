//interface Thing에서 게터 두개를 만들었고 computer와 book가 implement 한다.
//tangibleAssert에서 weight만 @override 되었다.
//Computer는 modelYear를 @override 했다.
//modelYear @override 하지 않은 Book은 abstract 클래스가 되었다.
abstract interface class Thing {
  double get weight;

  int get modelYear;
}
