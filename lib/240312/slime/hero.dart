class Hero {
  final String _name;
  int _hp;

  Hero(this._name, this._hp);

  int get hp => _hp;

  set hp(value) {
    if (hp < 0) {
      _hp = 0;
      return;
    }
    _hp = value;
  }

  String get name => _name;
}
