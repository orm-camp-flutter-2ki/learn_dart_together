// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StrongBox<E> {
  E _item;
  int _count = 0;
  KeyType _key;

  StrongBox(
    E item,
    KeyType key,
  )   : _item = item,
        _key = key {
    switch (key) {
      case KeyType.padlock:
        _count = 1024;
      case KeyType.buttom:
        _count = 10000;
      case KeyType.dial:
        _count = 30000;
      case KeyType.finger:
        _count = 1000000;
    }
  }

  void put(E item) {
    _item = item;
  }

  E? get() {
    if (_count == 0) {
      return _item;
    } else {
      _count -= 1;
      return null;
    }
  }

  // int setCount(KeyType key) {
  //   switch (key) {
  //     case KeyType.padlock:
  //       return 1024;
  //     case KeyType.buttom:
  //       return 10000;
  //     case KeyType.dial:
  //       return 30000;
  //     case KeyType.finger:
  //       return 1000000;
  //   }
  // }
}

enum KeyType {
  padlock,
  buttom,
  dial,
  finger,
}
