/// 정규 표현식
/// 1부터 100까지의 정수를 콤마로 연결하여 다음과 같은 문자열 str 을 생성하는 코드를 작성하시오.
/// 1,2,3,4,5 … 98,99,100,
/// 완성된 문자열 str 을 콤마를 구분자로 하여 String 리스트 numsString 에 대입하시오.

void practice1() {
  String str = '';
  List<String> strings = [];

  for (int i = 0; i <= 100; i++) {
    str += '$i,';
  }
  strings = str.split(',');
}

/// 폴더명과 파일명을 매개변수로 받아서 연결한 파일 주소를 리턴하는 메서드를 작성하시오.
/// 폴더명의 경우 마지막에 \ 기호가 붙어있는 경우도 있고 아닌 경우도 있으니 두 경우 모두 처리할 수 있도록 하시오.
/// 예) 폴더명 - C:\dev 또는 C:\dev\, 파일명 - abc.txt 일 경우 => C:\dev\abc.txt
/// 선언 예) String getPath(String path, String fileName)
/// 사용 예) getPath(‘C:\dev’, ‘abc.txt’)

void practice2(String folderName, String fileName) {}

/// 다음 조건에 맞는 정규표현식을 작성하시오.
/// 모든 문자열
/// 최초 첫번째 문자는 A, 두 번째 문자는 숫자, 세 번째 문자는 숫자이거나 아무것도 없거나
/// 최초 첫번째 문자는 U, 2~4번째 문자는 영어 대문자
