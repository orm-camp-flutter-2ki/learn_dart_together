enum KeyType {
  padlock,
  button,
  dial,
  finger
}

class StrongBox<T> {
  T _savedInstance;

  StrongBox(this._savedInstance);

  void put(T newInstance) => _savedInstance = newInstance;

  T get() => _savedInstance;
}