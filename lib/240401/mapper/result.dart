sealed class Result<D> {
  factory Result.success(D data) = Success;
  factory Result.forbidden(D data) = Forbidden;

  factory Result.error(Exception e) = Error;
}

class Success<D> implements Result<D> {
  final D data;
  Success(this.data);
}

class Forbidden<D> implements Result<D> {
  final D data;

  Forbidden(this.data);
}

class Error<D> implements Result<D> {
  final Exception e;

  Error(this.e);
}
// 오타 켜기