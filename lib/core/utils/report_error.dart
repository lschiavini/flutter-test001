import 'package:flutter/material.dart';

void reportError({
  required String message,
  required StackTrace stack,
  required String library,
}) {
  FlutterError.reportError(
    FlutterErrorDetails(
      exception: Exception(
        message,
      ),
      stack: stack,
      library: library,
    ),
  );
}
