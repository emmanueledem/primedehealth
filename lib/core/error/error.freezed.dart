// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$primedehealthException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$primedehealthExceptionServerException value)
        server,
    required TResult Function(_$primedehealthExceptionNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthExceptionAppException value) app,
    required TResult Function(_$primedehealthExceptionUnknownException value)
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthExceptionServerException value)? server,
    TResult? Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult? Function(_$primedehealthExceptionAppException value)? app,
    TResult? Function(_$primedehealthExceptionUnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthExceptionServerException value)? server,
    TResult Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult Function(_$primedehealthExceptionAppException value)? app,
    TResult Function(_$primedehealthExceptionUnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $primedehealthExceptionCopyWith<$Res> {
  factory $primedehealthExceptionCopyWith(primedehealthException value,
          $Res Function(primedehealthException) then) =
      _$primedehealthExceptionCopyWithImpl<$Res, primedehealthException>;
}

/// @nodoc
class _$primedehealthExceptionCopyWithImpl<$Res,
        $Val extends primedehealthException>
    implements $primedehealthExceptionCopyWith<$Res> {
  _$primedehealthExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$primedehealthExceptionServerExceptionImplCopyWith<$Res> {
  factory _$$$primedehealthExceptionServerExceptionImplCopyWith(
          _$$primedehealthExceptionServerExceptionImpl value,
          $Res Function(_$$primedehealthExceptionServerExceptionImpl) then) =
      __$$$primedehealthExceptionServerExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$$primedehealthExceptionServerExceptionImplCopyWithImpl<$Res>
    extends _$primedehealthExceptionCopyWithImpl<$Res,
        _$$primedehealthExceptionServerExceptionImpl>
    implements _$$$primedehealthExceptionServerExceptionImplCopyWith<$Res> {
  __$$$primedehealthExceptionServerExceptionImplCopyWithImpl(
      _$$primedehealthExceptionServerExceptionImpl _value,
      $Res Function(_$$primedehealthExceptionServerExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$$primedehealthExceptionServerExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$primedehealthExceptionServerExceptionImpl
    implements _$primedehealthExceptionServerException {
  const _$$primedehealthExceptionServerExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'primedehealthException.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$primedehealthExceptionServerExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$primedehealthExceptionServerExceptionImplCopyWith<
          _$$primedehealthExceptionServerExceptionImpl>
      get copyWith =>
          __$$$primedehealthExceptionServerExceptionImplCopyWithImpl<
              _$$primedehealthExceptionServerExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$primedehealthExceptionServerException value)
        server,
    required TResult Function(_$primedehealthExceptionNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthExceptionAppException value) app,
    required TResult Function(_$primedehealthExceptionUnknownException value)
        unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthExceptionServerException value)? server,
    TResult? Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult? Function(_$primedehealthExceptionAppException value)? app,
    TResult? Function(_$primedehealthExceptionUnknownException value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthExceptionServerException value)? server,
    TResult Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult Function(_$primedehealthExceptionAppException value)? app,
    TResult Function(_$primedehealthExceptionUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$primedehealthExceptionServerException
    implements primedehealthException {
  const factory _$primedehealthExceptionServerException(final String message) =
      _$$primedehealthExceptionServerExceptionImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$$primedehealthExceptionServerExceptionImplCopyWith<
          _$$primedehealthExceptionServerExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$primedehealthExceptionNoInternetExceptionImplCopyWith<$Res> {
  factory _$$$primedehealthExceptionNoInternetExceptionImplCopyWith(
          _$$primedehealthExceptionNoInternetExceptionImpl value,
          $Res Function(_$$primedehealthExceptionNoInternetExceptionImpl)
              then) =
      __$$$primedehealthExceptionNoInternetExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$primedehealthExceptionNoInternetExceptionImplCopyWithImpl<$Res>
    extends _$primedehealthExceptionCopyWithImpl<$Res,
        _$$primedehealthExceptionNoInternetExceptionImpl>
    implements _$$$primedehealthExceptionNoInternetExceptionImplCopyWith<$Res> {
  __$$$primedehealthExceptionNoInternetExceptionImplCopyWithImpl(
      _$$primedehealthExceptionNoInternetExceptionImpl _value,
      $Res Function(_$$primedehealthExceptionNoInternetExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$primedehealthExceptionNoInternetExceptionImpl
    implements _$primedehealthExceptionNoInternetException {
  const _$$primedehealthExceptionNoInternetExceptionImpl();

  @override
  String toString() {
    return 'primedehealthException.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$primedehealthExceptionNoInternetExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$primedehealthExceptionServerException value)
        server,
    required TResult Function(_$primedehealthExceptionNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthExceptionAppException value) app,
    required TResult Function(_$primedehealthExceptionUnknownException value)
        unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthExceptionServerException value)? server,
    TResult? Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult? Function(_$primedehealthExceptionAppException value)? app,
    TResult? Function(_$primedehealthExceptionUnknownException value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthExceptionServerException value)? server,
    TResult Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult Function(_$primedehealthExceptionAppException value)? app,
    TResult Function(_$primedehealthExceptionUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$primedehealthExceptionNoInternetException
    implements primedehealthException {
  const factory _$primedehealthExceptionNoInternetException() =
      _$$primedehealthExceptionNoInternetExceptionImpl;
}

/// @nodoc
abstract class _$$$primedehealthExceptionAppExceptionImplCopyWith<$Res> {
  factory _$$$primedehealthExceptionAppExceptionImplCopyWith(
          _$$primedehealthExceptionAppExceptionImpl value,
          $Res Function(_$$primedehealthExceptionAppExceptionImpl) then) =
      __$$$primedehealthExceptionAppExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$$primedehealthExceptionAppExceptionImplCopyWithImpl<$Res>
    extends _$primedehealthExceptionCopyWithImpl<$Res,
        _$$primedehealthExceptionAppExceptionImpl>
    implements _$$$primedehealthExceptionAppExceptionImplCopyWith<$Res> {
  __$$$primedehealthExceptionAppExceptionImplCopyWithImpl(
      _$$primedehealthExceptionAppExceptionImpl _value,
      $Res Function(_$$primedehealthExceptionAppExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$$primedehealthExceptionAppExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$primedehealthExceptionAppExceptionImpl
    implements _$primedehealthExceptionAppException {
  const _$$primedehealthExceptionAppExceptionImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'primedehealthException.app(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$primedehealthExceptionAppExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$primedehealthExceptionAppExceptionImplCopyWith<
          _$$primedehealthExceptionAppExceptionImpl>
      get copyWith => __$$$primedehealthExceptionAppExceptionImplCopyWithImpl<
          _$$primedehealthExceptionAppExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return app(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return app?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$primedehealthExceptionServerException value)
        server,
    required TResult Function(_$primedehealthExceptionNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthExceptionAppException value) app,
    required TResult Function(_$primedehealthExceptionUnknownException value)
        unknown,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthExceptionServerException value)? server,
    TResult? Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult? Function(_$primedehealthExceptionAppException value)? app,
    TResult? Function(_$primedehealthExceptionUnknownException value)? unknown,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthExceptionServerException value)? server,
    TResult Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult Function(_$primedehealthExceptionAppException value)? app,
    TResult Function(_$primedehealthExceptionUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$primedehealthExceptionAppException
    implements primedehealthException {
  const factory _$primedehealthExceptionAppException(final String? message) =
      _$$primedehealthExceptionAppExceptionImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$$primedehealthExceptionAppExceptionImplCopyWith<
          _$$primedehealthExceptionAppExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$primedehealthExceptionUnknownExceptionImplCopyWith<$Res> {
  factory _$$$primedehealthExceptionUnknownExceptionImplCopyWith(
          _$$primedehealthExceptionUnknownExceptionImpl value,
          $Res Function(_$$primedehealthExceptionUnknownExceptionImpl) then) =
      __$$$primedehealthExceptionUnknownExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$primedehealthExceptionUnknownExceptionImplCopyWithImpl<$Res>
    extends _$primedehealthExceptionCopyWithImpl<$Res,
        _$$primedehealthExceptionUnknownExceptionImpl>
    implements _$$$primedehealthExceptionUnknownExceptionImplCopyWith<$Res> {
  __$$$primedehealthExceptionUnknownExceptionImplCopyWithImpl(
      _$$primedehealthExceptionUnknownExceptionImpl _value,
      $Res Function(_$$primedehealthExceptionUnknownExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$primedehealthExceptionUnknownExceptionImpl
    implements _$primedehealthExceptionUnknownException {
  const _$$primedehealthExceptionUnknownExceptionImpl();

  @override
  String toString() {
    return 'primedehealthException.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$primedehealthExceptionUnknownExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$primedehealthExceptionServerException value)
        server,
    required TResult Function(_$primedehealthExceptionNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthExceptionAppException value) app,
    required TResult Function(_$primedehealthExceptionUnknownException value)
        unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthExceptionServerException value)? server,
    TResult? Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult? Function(_$primedehealthExceptionAppException value)? app,
    TResult? Function(_$primedehealthExceptionUnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthExceptionServerException value)? server,
    TResult Function(_$primedehealthExceptionNoInternetException value)?
        noInternet,
    TResult Function(_$primedehealthExceptionAppException value)? app,
    TResult Function(_$primedehealthExceptionUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$primedehealthExceptionUnknownException
    implements primedehealthException {
  const factory _$primedehealthExceptionUnknownException() =
      _$$primedehealthExceptionUnknownExceptionImpl;
}
