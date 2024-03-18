enum KeyType {
  padlock,
  button,
  dial,
  finger;

  int get value {
    int result;
    switch (this) {
      case KeyType.padlock:
        result = 1024;
        break;
      case KeyType.button:
        result = 10000;
        break;
      case KeyType.dial:
        result = 30000;
        break;
      case KeyType.finger:
        result = 1000000;
        break;
      default:
        result = 0;
        break;
    }
    return result;
  }
}
