class FetchUsersParams {
  final int numberOfUsers;

  FetchUsersParams({
    required this.numberOfUsers,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['numberOfUsers'] = numberOfUsers;
    return data;
  }

  @override
  String toString() {
    return 'FetchUsersParams{numberOfUsers: $numberOfUsers}';
  }
}
