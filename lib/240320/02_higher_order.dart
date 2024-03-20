void main() {
  List<int> nums = [1, 2, 3, 4, 5];

  Iterable<int> iterable = nums;

  // Iterable
  final results = nums.where((e) => e.isEven);
  List<int> numList = results.toList();
  Set<int> sets = results.toSet();

  print(nums.reduce((v, e) => v + e));
  print(nums.reduce((v, e) => v * e));

  print(nums.fold<int>(10, (p, e) => p + e));
}
