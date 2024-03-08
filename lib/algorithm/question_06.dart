void main() {
  /// 태풍의 간격
  /// 리스트의 각 날짜와 다음 날짜 사이의 차를 구한다.

  print(solution1([1, 3, 5, 7, 9]));
}

String solution1(List<int> stormArrivalDays) {
  String result = '';

  for (int i = 0; i < stormArrivalDays.length - 1; i++) {
    // 태풍이 상륙한 날짜는 뒤로 갈 수록 크기가 커지므로, 각 날짜 사이의 간격을 알기 위해서는 다음 날짜에서 이전 날짜를 빼면 알 수 있다.
    int gap = stormArrivalDays[i + 1] - stormArrivalDays[i];

    result += '$gap\n';
  }

  return result;
}
