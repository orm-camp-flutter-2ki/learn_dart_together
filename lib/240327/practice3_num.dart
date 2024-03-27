Future<int> addNum(List<int> numList) async {
  if (numList.length < 2) {
    throw ArgumentError('숫자는 최소 2개 이상이 필요합니다');
  }
  numList.sort((a, b) => b.compareTo(a));
  int add2Num = numList[0] + numList[1];

  return Future.value(add2Num); // Wrap result in a Future
}
