enum KeyType {
  padlock,
  button,
  dial,
  finger,
  once;

  int get value {
    switch (this) {
      case KeyType.padlock:
        return 1024;
      case KeyType.button:
        return 10000;
      case KeyType.dial:
        return 30000;
      case KeyType.finger:
        return 1000000;
      case KeyType.once:
        return 0;
    }
  }
}