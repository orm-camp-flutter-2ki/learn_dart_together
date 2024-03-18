import '../240315/book.dart';

void main() {
  // 안 돼!!
  final no = Pocket();
  no.put(true);
  no.put('aa');
  no.put(111);

  final pocket = Pocket<int>();

  pocket.put(10);

  // List items = [1, 2, 3];  // no!!
  // List items = <int>[1, 2, 3];  // no!!
  // final items = <int>[1, 2, 3]; // yes

  final items = [1, 2, 3];  // yes
  // items.add('value');
}

class Pocket<E> {
  E? _data;

  void put(E data) {
    _data = data;
  }

  E? get() {
    return _data;
  }
}
