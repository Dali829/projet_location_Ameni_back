import 'dart:convert';

List<BicycleModel> BicycleModelFromJson(String str) => List<BicycleModel>.from(
    json.decode(str).map((x) => BicycleModel.fromMap(x)));

class BicycleModel {
  String id;
  String name;
  String typeV;
  String type;
  String desc;
  List<dynamic> photos;
  int price;
  bool reserved;
  BicycleModel(
      {required this.id,
      required this.type,
      required this.name,
      required this.desc,
      required this.photos,
      required this.price,
      required this.typeV,
      required this.reserved});
  factory BicycleModel.fromMap(Map<String, dynamic> json) {
    return BicycleModel(
        id: json['_id'],
        name: json['name'],
        typeV: json['typeV'],
        type: json['type'],
        desc: json['desc'],
        photos: json['photos'],
        price: json['price'],
        reserved: json['reserved']);
  }
}
