sealed class Result<T, E> {
  factory Result.success(T data) = Success<T, E>;

  factory Result.error(E error) = Error<T, E>;
}

class Success<T, E> implements Result<T, E> {
  final T data;

  Success(this.data);
}

class Error<T, E> implements Result<T, E> {
  final E error;

  Error(this.error);
}
