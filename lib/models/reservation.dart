import 'dart:convert';

List<ReservationModel> ReservationModelFromJson(String str) =>
    List<ReservationModel>.from(
        json.decode(str).map((x) => ReservationModel.fromMap(x)));

class ReservationModel {
  String id;
  String date;
  int prix;
  String imageP;
  String nameP;

  ReservationModel(
      {required this.id,
      required this.prix,
      required this.date,
      required this.imageP,
      required this.nameP});
  factory ReservationModel.fromMap(Map<String, dynamic> json) {
    return ReservationModel(
      id: json['_id'],
      date: json['date'],
      prix: json['prix'],
      imageP: json['velo']['photos'][0],
      nameP: json['velo']['name'],
    );
  }
}
