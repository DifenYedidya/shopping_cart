import 'package:hive/hive.dart';

@HiveType(typeId: 6)
class User {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String password;
  @HiveField(4)
  final String phone;
  @HiveField(5)
  final String address;

  User(this.id, this.name, this.email, this.password, this.phone, this.address);
}
