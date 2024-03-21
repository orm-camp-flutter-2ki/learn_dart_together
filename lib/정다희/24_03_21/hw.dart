Future<int> getInt1() async {
  print('int1시작');
  await Future.delayed(Duration(seconds: 1));
  return 1;
}

Future<int> getInt2() async {
  print('int2시작');
  await Future.delayed(Duration(seconds: 1));
  return 2;
}

Future<int> getInt3() async {
  print('int3시작');
  await Future.delayed(Duration(seconds: 1));
  return 3;
}

Future<int> getInt4() async {
  print('int4시작');
  await Future.delayed(Duration(seconds: 1));
  return 4;
}

Future<int> getInt5() async {
  print('int5시작');
  await Future.delayed(Duration(seconds: 1));
  return 5;
}

//
Future<void> printInts() async {
  //  비동기의 이점을 살린코드. 그나마 최적화.
  // await = 다른 스레드에 위임
  Stopwatch stopwatch = Stopwatch()..start();
  List<Future> results = [
    getInt1(),
    getInt2(),
    getInt3(),
    getInt4(),
    getInt5(),
  ];
  // await printInts();
  await Future.wait(results);
  print(stopwatch.elapsed);

  //blocking 되는동안 기다림. -> 왜 굳이 비동기 ???
  // ex ) home 화면.. 여러 도메인이 합쳐져 있음. 하나의 api 에 대해서 보내주면 오래걸림
  // 유저랭킹, 상품 등등을 비동기로 부르고, 다 불러왔을때, then을 쓰면 받아온것부터 먼저 할수있음.

  Stopwatch stopwatch2 = Stopwatch()..start();
  List<int> results2 = [
    await getInt1(),
    await getInt2(),
    await getInt3(),
    await getInt4(),
    await getInt5(),
  ];

  print(stopwatch2.elapsed);
}

void main(List<String> arguments) async {
  printInts();
}
