enum KeyType {
  /// strong box 열쇠의 종류
  /// 수를 대입할 수 없을까 검색해보기..
  padlock, // 1_024회
  button, // 10_000회
  dial, // 30_000회
  finger, // 1_000_000
}

int padlockCountLimit = 1024;
int buttonCountLimit = 10000;
int dialCountLimit = 1024;
int fingerCountLimit = 1000000;
