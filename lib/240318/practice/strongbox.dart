import 'key_type.dart';

class StrongBox<E> {
  E? _item;
  KeyType keyType;
  int _requiredNumOfOpen;

  StrongBox({required this.keyType}) : _requiredNumOfOpen = 0;

  void put(E item) {
    _item = item;
  }

  E? get() {
    _requiredNumOfOpen++;
    return _requiredNumOfOpen >= keyType.requiredNumOfOpen ? _item : null;
  }
}
