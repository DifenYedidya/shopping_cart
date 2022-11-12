import 'package:shopping_cart2/domain/entity/user.dart';

final List<User> users = [
  User('cust1', 'Difen', 'difen@mail.com', 'password', '', ''),
  User('cust2', 'Adi', 'adi@mail.com', 'password', '', ''),
  User('cust3', 'Budi', 'budi@mail.com', 'password', '', ''),
];

User getUserByID(String id) {
  return users.firstWhere(
    (e) => e.id == id,
    orElse: () => throw Exception('User with id $id not found!'),
  );
}
