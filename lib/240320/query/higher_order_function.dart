import 'dart:math';

void main() {
  final items = [1, 2, 3, 4, 5];
  var maxResult = items[0];
  
  for (var i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      // print(items[i]); // 2, 4
    }
    maxResult = max(items[i], maxResult);
  }
  print(maxResult); // 5

  // where
  whereFunction(items);

  // map
  mapFunction(items);

  // reduce
  reduceFunction(items);

  final result = [];
  items.forEach((element) {
    if (element % 2 == 0) {
      result.add(element);
    }
  });

  // toList
  toListFunction(items);

  final setItems = [1, 2, 2, 3, 3, 4, 5];

  var setResult = [];
  var temp = <int>{};

  var anyResult = false;

  for (var i = 0; i < setItems.length; i++) {
    if (setItems[i] % 2 == 0) {
      temp.add(setItems[i]);
      anyResult = true;
      break;
    }
  }

  setResult = temp.toList();
  print(setResult); // 2, 4
  print(anyResult); // true

  // toSet
  toSetFunction(setItems);

  // any
  anyFunction(setItems);
}

// 짝수가 어딨는 지 찾아서 list 에 담았다.
void whereFunction(List<int> items) {
  var iterableType =
      items.where((element) => element % 2 == 0); // Iterable<int> 타입
  print(iterableType); // (2, 4)

  var list = iterableType.toList(); // List<int>
  print(list); // [2, 4]

  list.forEach(print); // void 타입, 출력 결과: 2, 4
}

// 짝수가 어딨는 지 찾아서 String 형태로 변환
void mapFunction(List<int> items) {
  var iterableType =
      items.where((element) => element % 2 == 0).map((e) => '숫자 $e');
  print(iterableType); // (숫자 2, 숫자 4)

  iterableType.forEach(print);

}

// 짝수를 찾아서 list 에 담기
void toListFunction(List<int> items) {
  var list = items.where((element) => element % 2 == 0).toList();
  print(list); // [2, 4]
}

// 짝수를 찾아서 중복 데이터 제거
void toSetFunction(List<int> items) {
  var set = items.where((element) => element % 2 == 0).toSet();
  print(set); // {2, 4}
}

// 짝수면 true
void anyFunction(List<int> items) {
  var any = items.any((element) => element % 2 == 0); // bool 타입
  print(any); // true
}

void reduceFunction(List<int> items) {
  var method1 = items.reduce((value, element) => max(value, element));
  print(method1); // 5
  var method2 = items.reduce(max);
  print(method2); // 5
}