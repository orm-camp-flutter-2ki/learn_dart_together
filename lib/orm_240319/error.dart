class Error1 {

int errorSome(String numString) {
  int num;
  try {
    num = int.parse(numString);
  } catch (e) {
    num = 0;
  }
  return num;
  }
}
