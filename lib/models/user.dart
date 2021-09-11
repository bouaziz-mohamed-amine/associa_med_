// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:associa_med_app/contract/model.dart';
import 'package:flutter/cupertino.dart';

class User extends Model {
  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    this.cin,
    this.password,
    this.birthdate,
    this.address,
    this.study,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  String? firstName;
  String? lastName;
  String email;
  String? cin;
  String? password;
  dynamic? birthdate;
  dynamic? address;
  dynamic? study;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        cin: json["cin"],
        birthdate: json["birthdate"],
        address: json["address"],
        study: json["study"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "cin": cin,
        "password": password,
        "birthdate": birthdate,
        "address": address,
        "study": study,
        "updated_at": updatedAt.toString(),
        "created_at": createdAt.toString(),
        "id": id,
      };
}
