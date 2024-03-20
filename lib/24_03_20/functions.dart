void main() {
  List<int> numbers = [1,2,3,4,5,6,7];
  List<int> evens = numbers.where((e) => e.isEven).toList();
  List<int> evens2 = evens;
  List<String> stringNumber = evens.map((e) => e.toString()) as List<String>;
}