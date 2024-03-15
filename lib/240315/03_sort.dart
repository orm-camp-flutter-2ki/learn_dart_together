void main() {
  final names = ['bbb','aaa', 'ccc'];

  names.sort((a, b) => a.compareTo(b));

  print(names);
}