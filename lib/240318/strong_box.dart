class StrongBox<T> {
  T? _item;

  void put(T item) {
    _item = item;
  }

  T? get() {
    return _item;
  }
}

void main() {
  StrongBox<String> box = StrongBox<String>();

  box.put("Hello, world!");
  box.put("Hello, Kitty!");
  print(box.get()); // 출력: Hello, Kitty!
}
