enum KeyType {
  padlock,
  button,
  dial,
  finger;

  int get value {
    return switch (this) {
      KeyType.padlock => 1024,
      KeyType.button => 10000,
      KeyType.dial => 30000,
      KeyType.finger => 1000000,
    };
  }
}
