import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

/// [primedehealthException] is thrown when there is a server error.
@freezed
class primedehealthException
    with _$primedehealthException
    implements Exception {
  /// [primedehealthException.server] is thrown when there is a server error.
  const factory primedehealthException.server(String message) =
      _$primedehealthExceptionServerException;

  /// [primedehealthException.noInternet] is thrown when there
  /// is no internet connection.
  const factory primedehealthException.noInternet() =
      _$primedehealthExceptionNoInternetException;

  /// [primedehealthException.app] is thrown when there
  /// is an error in the app.
  const factory primedehealthException.app(String? message) =
      _$primedehealthExceptionAppException;

  /// [primedehealthException.unknown] is thrown when there is an unknown error.
  const factory primedehealthException.unknown() =
      _$primedehealthExceptionUnknownException;
}
