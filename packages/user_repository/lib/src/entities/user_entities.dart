class MyUserEntity {
  String userid;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.userid,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  Map<String, Object?> toJson() {
    return {
      'userid': userid,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }
  static MyUserEntity fromJson(Map<String, dynamic> json) {
    return MyUserEntity(
      userid: json['userid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      hasActiveCart: json['hasActiveCart'] as bool,
    );
  }
}
