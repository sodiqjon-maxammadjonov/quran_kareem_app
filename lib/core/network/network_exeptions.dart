class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}

class ServerException extends NetworkException {
  final int? statusCode;

  ServerException(
      {String message = "Serverda xatolik yuz berdi", this.statusCode})
      : super(message);
}

class NoInternetException extends NetworkException {
  NoInternetException({String message = "Internet aloqasi mavjud emas"})
      : super(message);
}

class TimeoutException extends NetworkException {
  TimeoutException({String message = "Ulanish vaqti tugadi"}) : super(message);
}

class UnknownException extends NetworkException {
  UnknownException({String message = "Noma'lum xatolik"}) : super(message);
}
