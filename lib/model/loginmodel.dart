
import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
    String? status;
    Data? data;

    BookModel({
        this.status,
        this.data,
    });

    factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
    };
}

class Data {
    User? user;

    Data({
        this.user,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
    };
}

class User {
    String? name;
    String? email;
    String? password;
    String? phoneNumber;
    String? id;
    int? v;

    User({
        this.name,
        this.email,
        this.password,
        this.phoneNumber,
        this.id,
        this.v,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        phoneNumber: json["phoneNumber"],
        id: json["_id"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "phoneNumber": phoneNumber,
        "_id": id,
        "__v": v,
    };
}
