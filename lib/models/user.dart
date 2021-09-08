// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';





class User {
  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.cin,
    this.birthdate,
    this.address,
    this.study,
    required this.updatedAt,
    required this.createdAt,
    required this.id,

  });

  String firstName;
  String lastName;
  String email;
  String? cin;
  dynamic? birthdate;
  dynamic? address;
  dynamic? study;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

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
    "birthdate": birthdate,
    "address": address,
    "study": study,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "id": id,
  };
}
