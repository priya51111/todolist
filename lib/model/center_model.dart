import 'dart:convert';

CenterModel centerModelFromJson(String str) =>
    CenterModel.fromJson(json.decode(str));

String centerModelToJson(CenterModel data) => json.encode(data.toJson());

class CenterModel {
  String? status;
  int? email;
  Data? data;

  CenterModel({
    this.status,
    this.email,
    this.data,
  });

  factory CenterModel.fromJson(Map<String, dynamic> json) => CenterModel(
        status: json["status"],
        email: json["email"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "email": email,
        "data": data?.toJson(),
      };
}

class Data {
  List<UpdatedCenter>? updatedCenters;

  Data({
    this.updatedCenters,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        updatedCenters: json["centers"] == null
            ? []
            : List<UpdatedCenter>.from(
                json["centers"]!.map((x) => UpdatedCenter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "updatedCenters": updatedCenters == null
            ? []
            : List<dynamic>.from(updatedCenters!.map((x) => x.toJson())),
      };
}

class UpdatedCenter {
  String? id;
  DateTime? createdAt;
  String? address;
  DateTime? updatedAt;
  String? createdBy;

  int? totalUser;

  String? updatedBy;

  UpdatedCenter({
    this.id,
    this.createdAt,
    this.address,
    this.updatedAt,
    this.createdBy,
    this.totalUser,
    this.updatedBy,
  });

  factory UpdatedCenter.fromJson(Map<String, dynamic> json) => UpdatedCenter(
        id: json["_id"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        address: json["address"],
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        createdBy: json["createdBy"],
        totalUser: json["totaluser"],
        updatedBy: json["updatedBy"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "createdAt": createdAt?.toIso8601String(),
        "address": address,
        "updatedAt": updatedAt?.toIso8601String(),
        "createdBy": createdBy,
        "totalUser": totalUser,
        "updatedBy": updatedBy,
      };
}
