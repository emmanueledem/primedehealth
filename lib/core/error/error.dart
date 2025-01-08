import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

/// [primedehealth] is thrown when there is a server error.
@freezed
class primedehealth with _$primedehealth implements Exception {
  /// [primedehealth.server] is thrown when there is a server error.
  const factory primedehealth.server(String message) =
      _$primedehealthServerException;

  /// [primedehealth.noInternet] is thrown when there
  /// is no internet connection.
  const factory primedehealth.noInternet() =
      _$primedehealthNoInternetException;

  /// [primedehealth.app] is thrown when there
  /// is an error in the app.
  const factory primedehealth.app(String? message) =
      _$primedehealthAppException;

  /// [primedehealth.unknown] is thrown when there is an unknown error.
  const factory primedehealth.unknown() =
      _$primedehealthUnknownException;
}
