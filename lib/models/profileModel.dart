class profilModel {
  String? id;
  String? username;
  String? email;
  int? wallet;
  String? Role;

  profilModel({this.id, this.username, this.email, this.wallet, this.Role});
  factory profilModel.fromJson(Map<String, dynamic> json) {
    return profilModel(
        id: json['_id'],
        username: json['username'],
        email: json['email'],
        wallet: json['wallet'],
        Role: json['Role']);
  }
  Map<String, dynamic> toMap() => {
        "id": id,
        "username": username,
        "wallet": wallet,
        "email": email,
        "Role": Role
      };
}
