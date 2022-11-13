abstract class Either<L, R> {
  const Either._();

  const factory Either.left(L value) = Left;
  const factory Either.right(R value) = Right;

  bool get isRight => this is Right<L, R>;
  bool get isLeft => this is Left<L, R>;

  Either<L, T> map<T>(T Function(R value) transform);
}

class Left<L, R> extends Either<L, R> {
  final L value;

  const Left(this.value) : super._();

  @override
  Either<L, T> map<T>(T Function(R value) transform) {
    return Either.left(value);
  }
}

class Right<L, R> extends Either<L, R> {
  final R value;

  const Right(this.value) : super._();

  @override
  Either<L, T> map<T>(T Function(R value) transform) {
    return Either.right(transform(value));
  }
}
