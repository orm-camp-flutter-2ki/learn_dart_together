class StrongBox<E> {
  KeyType? _key;

  StrongBox(KeyType key) : _key = key;

  void put(KeyType key) {
    _key = key;
  }

  get() {
    return _key;
  }
}

enum KeyType {
  padlock,
  buttom,
  dial,
  finger,
}

void main() {}
