import 'package:flutter/material.dart';


import 'dart:convert';

Menu menuFromJson(String str) => Menu.fromJson(json.decode(str));

String menuToJson(Menu data) => json.encode(data.toJson());

class Menu {
    String? menuname;
    String? userId;
    String? date;

    Menu({
        this.menuname,
        this.userId,
        this.date,
    });

    factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        menuname: json["menuname"],
        userId: json["userId"],
        date: json["date"],
    );

    Map<String, dynamic> toJson() => {
        "menuname": menuname,
        "userId": userId,
        "date": date,
    };
}
