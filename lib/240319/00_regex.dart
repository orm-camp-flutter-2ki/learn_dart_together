void main() {
  String s = 'abc,def:ghi';
  List<String> words = s.split(RegExp(r'[,:]'));
  for (var value in words) {
    print(value);
  }
}
