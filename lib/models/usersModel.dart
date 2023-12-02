import 'dart:convert';

List<UserModel> UserModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromMap(x)));

class UserModel {
  String id;
  String username;
  String email;
  int wallet;

  UserModel(
      {required this.id,
      required this.username,
      required this.wallet,
      required this.email});
  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      id: json['_id'],
      username: json['username'],
      email: json['email'],
      wallet: json['wallet'],
    );
  }
}
