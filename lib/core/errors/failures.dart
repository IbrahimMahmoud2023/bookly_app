import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with ApiServer');

      case DioExceptionType.badResponse:
        if (dioException.response != null &&
            dioException.response?.statusCode != null) {
          return ServerFailure.fromResponse(
            dioException.response!.statusCode!,
            dioException.response!.data,
          );
        } else {
          return ServerFailure('Unknown server error');
        }

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection to ApiServer failed');

      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') == true) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, please try later!');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      final serverMessage =
          response?['error']?['message'] ?? 'Authentication error';
      return ServerFailure(serverMessage);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later!');
    } else {
      return ServerFailure('Oops! there was an error, please try later!');
    }
  }
}
