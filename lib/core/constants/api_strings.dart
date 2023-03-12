const String _baseUrl = 'https://randomuser.me/api/';

class ApiStrings {
  static String get fetchOneUser => '$_baseUrl?results=1';

  static String fetchMultipleUsers({
    required int nUsers,
  }) =>
      '$_baseUrl?results=$nUsers';
}
