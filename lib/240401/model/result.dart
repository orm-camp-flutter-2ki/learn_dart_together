sealed class Result<T> {
  //뭐를 넣어도 작성할 수 있도록 하기 위해서 제네릭을 사용하는 것임
  factory Result.success(T data) = Success; // Option

  factory Result.error(String e) = Error; // Option
}

class Success<T> implements Result<T> {
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final String e;

  Error(this.e);
}
