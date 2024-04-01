sealed class Result<T> {
  factory Result.success(T data) = Success;

  factory Result.error(Exception e) = Error;
}

class Success<T> implements Result<T> {
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final Exception e;

  Error(this.e);
}
