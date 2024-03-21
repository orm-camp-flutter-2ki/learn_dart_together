import 'query.dart';
import 'package:collection/collection.dart';

void main() {
  //List와 Iterable 차이
  List list = transactions.map((element) => element.trader.name).toList();
  Iterable iterable = transactions.map((element) => element.trader.name);
  print(list);
  //List 타입은 이렇게 나온다. [Brian, Raoul, Raoul, Mario, Mario, Alan]
  print(iterable);
  //Iterable 타입은 이렇게 나온다. (Brian, Raoul, Raoul, Mario, Mario, Alan)

  //where -> js의 filter 같은 녀석, map,where은 Iterable 반환. 인스턴스를 돌리면 다 Iterable인지?

// .sorted vs ..sort
//sorted는 복사본을 가공한후 List타입으로 리턴한다.
//sort는 void를 리턴한다. 따라서 체인메서드가 불가능 이지만 ..를 써서 가능하게 한다.경우에 따라 ()로 감싸서 우선순위를 매겨줘야 한다.
//sort는 void이기 때문에 변수에 등록 안된다.
  List list1 = ['one', 'two', 'three'];
  //.sort (메서드 체인으로 다른 기능을 호출할 것이 아니라면 cascade안해도 된다.
  list1.sort((a, b) => b.length.compareTo(a.length));
  print(list1); // [three,one,two] 가 반환 Why? list1에 덮어 씌우니까

  //.sorted
  list1.sorted(
      (a, b) => b.length.compareTo(a.length)); //프린트 시 [three, one, two] 반환
  print(list1);
  // [one, two, three] 가 반환. list1의 값이 재할당 되지 않았다. Why? list1을 복사해서 가공하니까
  //따라서 sorted()함수 값을 저장하고 싶다면 다른 변수가 받아줘야 한다.

//sort메서드에서 왜 위치를 바꾼다고 오름차순이 되는가?  -> a>b일때 1, a==b일때 0, a<b일때 -1을 반환하기 때문
//list1.sorted((a,b)=> b.length.compareTo(a.length)) 는 오름차순
//list1.sorted((a,b)=> a.length.compareTo(b.length)) 는 내림차순
// .. cascade는 오브젝트를 반환하지 않을때(return 값이 void일 때) 써서 체인메서드를 가능하게 해준다.(sort 처럼)
}
