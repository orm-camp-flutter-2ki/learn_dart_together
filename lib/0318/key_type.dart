enum KeyType {
  padlock, // 1_024회
  button, // 10_000회
  dial, // 30_000회
  finger, // 1_000_000
}

const int padlockCountLimit = 1024;
const int buttonCountLimit = 10000;
const int dialCountLimit = 30000;
const int fingerCountLimit = 1000000;
