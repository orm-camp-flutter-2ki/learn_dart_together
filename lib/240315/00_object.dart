void main() {
  int i = 10;
  double d = 10.5;
  String s = i.toString();

  num number = 10;
  number = 10.5;

  Person person = Person();

  // No 근본이 없다
  dynamic dynamic2 = null;
  dynamic2 = 10;
  dynamic2 = 10.5;
  dynamic2 = 'tttt';
  dynamic2.asdfasdf();

  // Ok 근본이 있다
  Object object = person;
  object = 10;
  object = 10.5;
  object = 'tttt';

  if (object is String) {
    String text = object;
  }
}

class Person {

}