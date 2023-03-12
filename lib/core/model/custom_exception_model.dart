class CustomExceptionModel implements Exception {
  final String message;
  final int statusCode;

  CustomExceptionModel({
    required this.message,
    required this.statusCode,
  });

  @override
  String toString() {
    return 'CustomExceptionModel{message: $message, statusCode: $statusCode}';
  }
}
