
class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString(){
    return '$_message$_prefix';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No internet');
}

class RequestTimeout extends AppExceptions {
  RequestTimeout(String? message) : super(message, 'Request Timed out');
}

class ServerExceptions extends AppExceptions {
  ServerExceptions(String? message) : super(message, 'Internal Server error');
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException(String? message) : super(message, 'Invalid Url');
}

class FetchDataException extends AppExceptions {
  FetchDataException(String? message) : super(message, 'Error while communication');
}