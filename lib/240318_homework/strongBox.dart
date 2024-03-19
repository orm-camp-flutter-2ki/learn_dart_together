class StrongBox<E> {
  E? _treasure;
  KeyType keyValue;
  int _count = 0;

  void put(E treasure) {
    _treasure = treasure;
  }

  int get count => _count;

  E? get() {
    if (_count++ < keyValue.count) return null;

    return _treasure;
  }

  StrongBox({required this.keyValue});
}

enum KeyType {
  padlock(type: 'padlock', count: 1024),
  button(type: 'button', count: 10000),
  dial(type: 'dial', count: 30000),
  finger(type: 'finger', count: 1000000);

  final String type;
  final int count;

  const KeyType({required this.type, required this.count});
}
