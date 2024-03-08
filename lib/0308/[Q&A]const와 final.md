0308 Q&A
=============
### question  
#### step_01
```dart  
class Cleric {
  String name;
  int hp;
  int mp;  
  static final int maxHp = 50;
  static final int maxMp = 10;

  Cleric(this.name, {this.hp = 50, this.mp = 10}); // 생성자

  ...
  ```
- 코드를 작성하면서 생성자 룰 설정 시, hp와 mp의 기본값을 직접 주는게 아니라 maxHp와 macMp를 대입하고 싶었다.
  <br/>
   
```dart  
//Cleric(this.name, {this.hp = maxHp, this.mp = maxMP});
```
- 그러나 위 코드 입력 시 error가 발생했다.  
<br/>

#### step 02
```dart  
class Cleric {
  String name;
  int hp;
  int mp;
  // final -> const 로 수정
  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric(this.name, {this.hp = maxHp, this.mp = maxMP}); // 생성자

  ...
  ```
- 팀원과 해결방법을 찾아보다 maxHp, maxMp field 선언 시 final 키워드가 아닌 const 키워드를 사용하면 가능하단 것을 알게되었다.
- 그러나 이유를 알지 못해 다른 수강생분과 선생님에게 질문하였고 답변을 들었다.
- 답변에 대해 이해하고 공유하기 위해 글로 작성하였다.
  <br/>

## Answer  
#### static이란?
- 우선 static이라는 키워드의 특성을 알아야했다.  
> static 키워드가 붙으면 해당 변수나 함수는 메모리에 먼저 한번 할당되어 프로그램이 종료될 때 해제되는 것을 의미한다.   
> [참고한 글](https://jutole.tistory.com/86)   
- 이렇게 적힌 것처럼 런타임 전, 이미 메모리에 올라간 데이터인 것이다.
<br/>

#### const와 final의 차이   
- 둘 다 상수 키워드인 것은 동일하지만 큰 차이가 있다면 값이 결정되는 순간이 다르다는 것이다.
> - const : 컴파일타임에 값이 결정된다.
> - final : 런타임에 값이 결정된다.
> [차이에 대해 정리한 본인의 글](https://github.com/yujiyeong/TIL/blob/main/dart/02%20%EB%AC%B8%EB%B2%95/05%20const%20%EC%99%80%20final.md)
<br/>

### 따라서 final은 안되고 const는 가능했던 이유는  
> 1) static은 런타임 이전에 메모리에 값이 올라간다.  
> 2) 생성자 룰은 컴파일 타임에 이미 결정된 값이어야 한다.
```dart  
Cleric(this.name, {this.hp = maxHp, this.mp = maxMP}); // 이 부분이 생성자 룰이다.
```
<br/>

- 위 두개의 이유에 따라서 런타임에 값이 할당이 되는 final 키워드가 아니라 이미 코드를 작성할 때, 즉 **컴파일 타임에 값이 할당이 되는 const 키워드를 사용**해야 했던 것이다.
<br/>
