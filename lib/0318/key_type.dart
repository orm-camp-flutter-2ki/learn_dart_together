enum KeyType {

  padlock(needToTry: 1024),
  button(needToTry: 10000),
  dial(needToTry: 30000),
  finger(needToTry: 1000000);

  final int needToTry;

  const KeyType({required this.needToTry});
}