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
mixin _$primedehealth {
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
    required TResult Function(_$primedehealthServerException value) server,
    required TResult Function(_$primedehealthNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthAppException value) app,
    required TResult Function(_$primedehealthUnknownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthServerException value)? server,
    TResult? Function(_$primedehealthNoInternetException value)? noInternet,
    TResult? Function(_$primedehealthAppException value)? app,
    TResult? Function(_$primedehealthUnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthServerException value)? server,
    TResult Function(_$primedehealthNoInternetException value)? noInternet,
    TResult Function(_$primedehealthAppException value)? app,
    TResult Function(_$primedehealthUnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $primedehealthCopyWith<$Res> {
  factory $primedehealthCopyWith(
          primedehealth value, $Res Function(primedehealth) then) =
      _$primedehealthCopyWithImpl<$Res, primedehealth>;
}

/// @nodoc
class _$primedehealthCopyWithImpl<$Res, $Val extends primedehealth>
    implements $primedehealthCopyWith<$Res> {
  _$primedehealthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$primedehealthServerExceptionImplCopyWith<$Res> {
  factory _$$$primedehealthServerExceptionImplCopyWith(
          _$$primedehealthServerExceptionImpl value,
          $Res Function(_$$primedehealthServerExceptionImpl) then) =
      __$$$primedehealthServerExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$$primedehealthServerExceptionImplCopyWithImpl<$Res>
    extends _$primedehealthCopyWithImpl<$Res,
        _$$primedehealthServerExceptionImpl>
    implements _$$$primedehealthServerExceptionImplCopyWith<$Res> {
  __$$$primedehealthServerExceptionImplCopyWithImpl(
      _$$primedehealthServerExceptionImpl _value,
      $Res Function(_$$primedehealthServerExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$$primedehealthServerExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$primedehealthServerExceptionImpl
    implements _$primedehealthServerException {
  const _$$primedehealthServerExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'primedehealth.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$primedehealthServerExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$primedehealthServerExceptionImplCopyWith<
          _$$primedehealthServerExceptionImpl>
      get copyWith => __$$$primedehealthServerExceptionImplCopyWithImpl<
          _$$primedehealthServerExceptionImpl>(this, _$identity);

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
    required TResult Function(_$primedehealthServerException value) server,
    required TResult Function(_$primedehealthNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthAppException value) app,
    required TResult Function(_$primedehealthUnknownException value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthServerException value)? server,
    TResult? Function(_$primedehealthNoInternetException value)? noInternet,
    TResult? Function(_$primedehealthAppException value)? app,
    TResult? Function(_$primedehealthUnknownException value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthServerException value)? server,
    TResult Function(_$primedehealthNoInternetException value)? noInternet,
    TResult Function(_$primedehealthAppException value)? app,
    TResult Function(_$primedehealthUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$primedehealthServerException implements primedehealth {
  const factory _$primedehealthServerException(final String message) =
      _$$primedehealthServerExceptionImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$$primedehealthServerExceptionImplCopyWith<
          _$$primedehealthServerExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$primedehealthNoInternetExceptionImplCopyWith<$Res> {
  factory _$$$primedehealthNoInternetExceptionImplCopyWith(
          _$$primedehealthNoInternetExceptionImpl value,
          $Res Function(_$$primedehealthNoInternetExceptionImpl) then) =
      __$$$primedehealthNoInternetExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$primedehealthNoInternetExceptionImplCopyWithImpl<$Res>
    extends _$primedehealthCopyWithImpl<$Res,
        _$$primedehealthNoInternetExceptionImpl>
    implements _$$$primedehealthNoInternetExceptionImplCopyWith<$Res> {
  __$$$primedehealthNoInternetExceptionImplCopyWithImpl(
      _$$primedehealthNoInternetExceptionImpl _value,
      $Res Function(_$$primedehealthNoInternetExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$primedehealthNoInternetExceptionImpl
    implements _$primedehealthNoInternetException {
  const _$$primedehealthNoInternetExceptionImpl();

  @override
  String toString() {
    return 'primedehealth.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$primedehealthNoInternetExceptionImpl);
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
    required TResult Function(_$primedehealthServerException value) server,
    required TResult Function(_$primedehealthNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthAppException value) app,
    required TResult Function(_$primedehealthUnknownException value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthServerException value)? server,
    TResult? Function(_$primedehealthNoInternetException value)? noInternet,
    TResult? Function(_$primedehealthAppException value)? app,
    TResult? Function(_$primedehealthUnknownException value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthServerException value)? server,
    TResult Function(_$primedehealthNoInternetException value)? noInternet,
    TResult Function(_$primedehealthAppException value)? app,
    TResult Function(_$primedehealthUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$primedehealthNoInternetException implements primedehealth {
  const factory _$primedehealthNoInternetException() =
      _$$primedehealthNoInternetExceptionImpl;
}

/// @nodoc
abstract class _$$$primedehealthAppExceptionImplCopyWith<$Res> {
  factory _$$$primedehealthAppExceptionImplCopyWith(
          _$$primedehealthAppExceptionImpl value,
          $Res Function(_$$primedehealthAppExceptionImpl) then) =
      __$$$primedehealthAppExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$$primedehealthAppExceptionImplCopyWithImpl<$Res>
    extends _$primedehealthCopyWithImpl<$Res, _$$primedehealthAppExceptionImpl>
    implements _$$$primedehealthAppExceptionImplCopyWith<$Res> {
  __$$$primedehealthAppExceptionImplCopyWithImpl(
      _$$primedehealthAppExceptionImpl _value,
      $Res Function(_$$primedehealthAppExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$$primedehealthAppExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$primedehealthAppExceptionImpl implements _$primedehealthAppException {
  const _$$primedehealthAppExceptionImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'primedehealth.app(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$primedehealthAppExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$primedehealthAppExceptionImplCopyWith<_$$primedehealthAppExceptionImpl>
      get copyWith => __$$$primedehealthAppExceptionImplCopyWithImpl<
          _$$primedehealthAppExceptionImpl>(this, _$identity);

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
    required TResult Function(_$primedehealthServerException value) server,
    required TResult Function(_$primedehealthNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthAppException value) app,
    required TResult Function(_$primedehealthUnknownException value) unknown,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthServerException value)? server,
    TResult? Function(_$primedehealthNoInternetException value)? noInternet,
    TResult? Function(_$primedehealthAppException value)? app,
    TResult? Function(_$primedehealthUnknownException value)? unknown,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthServerException value)? server,
    TResult Function(_$primedehealthNoInternetException value)? noInternet,
    TResult Function(_$primedehealthAppException value)? app,
    TResult Function(_$primedehealthUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$primedehealthAppException implements primedehealth {
  const factory _$primedehealthAppException(final String? message) =
      _$$primedehealthAppExceptionImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$$primedehealthAppExceptionImplCopyWith<_$$primedehealthAppExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$primedehealthUnknownExceptionImplCopyWith<$Res> {
  factory _$$$primedehealthUnknownExceptionImplCopyWith(
          _$$primedehealthUnknownExceptionImpl value,
          $Res Function(_$$primedehealthUnknownExceptionImpl) then) =
      __$$$primedehealthUnknownExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$primedehealthUnknownExceptionImplCopyWithImpl<$Res>
    extends _$primedehealthCopyWithImpl<$Res,
        _$$primedehealthUnknownExceptionImpl>
    implements _$$$primedehealthUnknownExceptionImplCopyWith<$Res> {
  __$$$primedehealthUnknownExceptionImplCopyWithImpl(
      _$$primedehealthUnknownExceptionImpl _value,
      $Res Function(_$$primedehealthUnknownExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$primedehealthUnknownExceptionImpl
    implements _$primedehealthUnknownException {
  const _$$primedehealthUnknownExceptionImpl();

  @override
  String toString() {
    return 'primedehealth.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$primedehealthUnknownExceptionImpl);
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
    required TResult Function(_$primedehealthServerException value) server,
    required TResult Function(_$primedehealthNoInternetException value)
        noInternet,
    required TResult Function(_$primedehealthAppException value) app,
    required TResult Function(_$primedehealthUnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$primedehealthServerException value)? server,
    TResult? Function(_$primedehealthNoInternetException value)? noInternet,
    TResult? Function(_$primedehealthAppException value)? app,
    TResult? Function(_$primedehealthUnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$primedehealthServerException value)? server,
    TResult Function(_$primedehealthNoInternetException value)? noInternet,
    TResult Function(_$primedehealthAppException value)? app,
    TResult Function(_$primedehealthUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$primedehealthUnknownException implements primedehealth {
  const factory _$primedehealthUnknownException() =
      _$$primedehealthUnknownExceptionImpl;
}
