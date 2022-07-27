import 'package:cloud_firestore/cloud_firestore.dart';

class RabbitProfile {
  String? rabbitType;
  String? rabbitName;
  String? dateofPurchase;
  String? cage;
  String? id;

  RabbitProfile(
      {this.rabbitType,
      this.rabbitName,
      this.dateofPurchase,
      this.id});

  RabbitProfile.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    Map data = documentSnapshot!.data() as Map;
    rabbitType = data['RabbitType'] ?? '';
    rabbitName = data['RabbitName'] ?? '';
    dateofPurchase = data['DateofPurchase'] ?? '';
    id = documentSnapshot.id;
  }

  RabbitProfile.fromQueryDocumentSnapshot(
      {QueryDocumentSnapshot? queryDocSnapshot}) {
    Map data = queryDocSnapshot!.data() as Map;
    rabbitType = data['RabbitType'] ?? '';
    rabbitName = data['RabbitName'] ?? '';
    dateofPurchase = data['DateofPurchase'] ?? '';
    id = queryDocSnapshot.id;
  }

  RabbitProfile.fromJson(Map<String, dynamic> json) {
    rabbitType = json['RabbitType'] as String;
    rabbitName = json['RabbitName'] as String;
    dateofPurchase = json['DateofPurchase'] as String;
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['RabbitType'] = this.rabbitType;
    data['RabbitName'] = this.rabbitName;
    data['DateofPurchase'] = this.dateofPurchase;
    data['id'] = this.id;
    return data;
  }
}
