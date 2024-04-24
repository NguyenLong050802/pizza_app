import '../entities/entities.dart';

class MyUser {
  String userid;
  String email;
  String name;
  bool hasActiveCart;

  MyUser({
    required this.userid,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  static final empty = MyUser(
    userid: '',
    email: '',
    name: '',
    hasActiveCart: false,
  );

  MyUserEntity toEntity() {
    return MyUserEntity(
      userid: userid,
      email: email,
      name: name,
      hasActiveCart: hasActiveCart,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      userid: entity.userid,
      email: entity.email,
      name: entity.name,
      hasActiveCart: entity.hasActiveCart,
    );
  }
  @override
  String toString() {
    return 'MyUser: $userid, $email, $name, $hasActiveCart';
  }  
}