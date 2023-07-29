class User {
  int? id;
  String? username, email, password, profilePicture;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    this.profilePicture,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        password: json['password'],
        profilePicture: json['profile_picture'] ?? "");
  }

  static List<User> usersFromSnapshot(List snapshot) {
    return snapshot.map((data) => User.fromJson(data)).toList();
  }
}
