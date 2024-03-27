Future<int> addNum() async {
  List<int> numList = [1, 2, 5, 3, 9, 8];

  numList.sort((a, b) => b.compareTo(a));
  int add2Num = numList[0] + numList[1];

  return add2Num; // 리스트를 정렬
}

void main() async {
  int result = await addNum();
  print(result);
}
