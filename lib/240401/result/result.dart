sealed class Result<T> {
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
