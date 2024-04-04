// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookHistory {
  int get id => throw _privateConstructorUsedError;
  int get bookId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get rentDate => throw _privateConstructorUsedError;
  bool get isExtend => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookHistoryCopyWith<BookHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookHistoryCopyWith<$Res> {
  factory $BookHistoryCopyWith(
          BookHistory value, $Res Function(BookHistory) then) =
      _$BookHistoryCopyWithImpl<$Res, BookHistory>;
  @useResult
  $Res call({int id, int bookId, int userId, String rentDate, bool isExtend});
}

/// @nodoc
class _$BookHistoryCopyWithImpl<$Res, $Val extends BookHistory>
    implements $BookHistoryCopyWith<$Res> {
  _$BookHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? userId = null,
    Object? rentDate = null,
    Object? isExtend = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      rentDate: null == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as String,
      isExtend: null == isExtend
          ? _value.isExtend
          : isExtend // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookHistoryImplCopyWith<$Res>
    implements $BookHistoryCopyWith<$Res> {
  factory _$$BookHistoryImplCopyWith(
          _$BookHistoryImpl value, $Res Function(_$BookHistoryImpl) then) =
      __$$BookHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int bookId, int userId, String rentDate, bool isExtend});
}

/// @nodoc
class __$$BookHistoryImplCopyWithImpl<$Res>
    extends _$BookHistoryCopyWithImpl<$Res, _$BookHistoryImpl>
    implements _$$BookHistoryImplCopyWith<$Res> {
  __$$BookHistoryImplCopyWithImpl(
      _$BookHistoryImpl _value, $Res Function(_$BookHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? userId = null,
    Object? rentDate = null,
    Object? isExtend = null,
  }) {
    return _then(_$BookHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      rentDate: null == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as String,
      isExtend: null == isExtend
          ? _value.isExtend
          : isExtend // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookHistoryImpl implements _BookHistory {
  const _$BookHistoryImpl(
      {required this.id,
      required this.bookId,
      required this.userId,
      required this.rentDate,
      required this.isExtend});

  @override
  final int id;
  @override
  final int bookId;
  @override
  final int userId;
  @override
  final String rentDate;
  @override
  final bool isExtend;

  @override
  String toString() {
    return 'BookHistory(id: $id, bookId: $bookId, userId: $userId, rentDate: $rentDate, isExtend: $isExtend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rentDate, rentDate) ||
                other.rentDate == rentDate) &&
            (identical(other.isExtend, isExtend) ||
                other.isExtend == isExtend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, bookId, userId, rentDate, isExtend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookHistoryImplCopyWith<_$BookHistoryImpl> get copyWith =>
      __$$BookHistoryImplCopyWithImpl<_$BookHistoryImpl>(this, _$identity);
}

abstract class _BookHistory implements BookHistory {
  const factory _BookHistory(
      {required final int id,
      required final int bookId,
      required final int userId,
      required final String rentDate,
      required final bool isExtend}) = _$BookHistoryImpl;

  @override
  int get id;
  @override
  int get bookId;
  @override
  int get userId;
  @override
  String get rentDate;
  @override
  bool get isExtend;
  @override
  @JsonKey(ignore: true)
  _$$BookHistoryImplCopyWith<_$BookHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
