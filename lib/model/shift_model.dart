import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tolist/Controller/login_controller.dart';

ShiftModel ShiftModelFromJson(String str) =>
    ShiftModel.fromJson(json.decode(str));
// ignore: non_constant_identifier_names
String ShiftModelToJson(ShiftModel data) => json.encode(data.toJson());

class ShiftModel {
  String? status;
  int? email;
  Data? data;

  ShiftModel({
    this.status,
    this.email,
    this.data,
  });
  factory ShiftModel.fromJson(Map<String, dynamic> json) => ShiftModel(
        status: json["status"],
        email: json["TotalNumber"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );
  Map<String, dynamic> toJson() => {
        "status": status,
        "email": email,
        "data": data?.toJson(),
      };
}

class Data {
  List<Shift>? shift;
  Data({
    this.shift,
  });
  factory Data.fromJson(Map<String, dynamic> json) => Data(
        shift: json["shift"] == null
            ? []
            : List<Shift>.from(json["shift"]!.map((x) => Shift.fromJson(x))),
      );
  Map<String, dynamic> toJson() => {
        "shift": shift == null
            ? []
            : List<dynamic>.from(shift!.map((x) => x.toJson())),
      };
}

class Shift {
  String? id;
  String? name;
  String? startTime;
  String? endTime;
  String? createdBy;

  Shift({
    this.id,
    this.name,
    this.startTime,
    this.endTime,
    this.createdBy,
  });
  factory Shift.fromJson(Map<String, dynamic> json) => Shift(
        id: json["_id"],
        name: json["name"],
        startTime: json["startTime"],
        endTime: json["endTime"],
        createdBy: json["createdBy"],
      );
      
    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "startTime": startTime,
        "endTime": endTime,
        "createdBy": LoginController().user!.data!.user!.id,
    };
}
