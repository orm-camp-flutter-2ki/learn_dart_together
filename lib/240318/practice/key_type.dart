/// https://dart.dev/language/enums#declaring-enhanced-enums
///
/// 공식문서 Enhanced Enums 참고하여 열거형 타입 정의
enum KeyType {
  padlock(requiredNumOfOpen: 1024),
  button(requiredNumOfOpen: 10000),
  dial(requiredNumOfOpen: 30000),
  finger(requiredNumOfOpen: 1000000);

  final int _requiredNumOfOpen;

  const KeyType({required int requiredNumOfOpen})
      : _requiredNumOfOpen = requiredNumOfOpen;

  int get requiredNumOfOpen => _requiredNumOfOpen;
}

/**
 * enhanced enums
 *
 * mixins으로 추가되는 변수들까지 모든 인스턴스 변수들은 final로 선언되어야 합니다.
 * 모든 제너러티브 생성자는 const로 선언되어야 합니다.
 * Factory 생성자는 고정된 enum 인스턴스 중 하나만을 반환할 수 있습니다.
 * Enum이 자동으로 확장되므로 다른 클래스들은 Enum으로 확장될 수 없습니다.
 * index, hashCode, 항등 연산자 ==는 재정의할 수 없습니다.
 * value로 명명된 멤버는 enum에 선언될 수 없습니다. 만약 enum에 선언한다면, 자동으로 생성된 정적 value getter와 충돌합니다.
 * Enum의 모든 인스턴스들은 선언의 처음 부분에 선언되어야 하고 반드시 한 개 이상의 인스턴스가 선언되어야 합니다.
 *
 * enhanced enum이 가지고 있는 인스턴스 메서드는 this를 사용하여 현재 enum 값을 참조할 수 있습니다.
 */
