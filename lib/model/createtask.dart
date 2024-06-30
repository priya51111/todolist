import 'dart:convert';

Task createtaskFromJson(String str) =>Task.fromJson(json.decode(str));

String createtaskToJson(Task data) => json.encode(data.toJson());

class Task {
    String? task;
    String? date;
    String? time;
    List<MenuId>? menuId;
    String? userId;

   Task({
        this.task,
        this.date,
        this.time,
        this.menuId,
        this.userId,
    });

    factory Task.fromJson(Map<String, dynamic> json) => Task(
        task: json["task"],
        date: json["date"],
        time: json["time"],
        menuId: json["menuId"] == null ? [] : List<MenuId>.from(json["menuId"]!.map((x) => MenuId.fromJson(x))),
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "task": task,
        "date": date,
        "time": time,
        "menuId": menuId == null ? [] : List<dynamic>.from(menuId!.map((x) => x.toJson())),
        "userId": userId,
    };
}

class MenuId {
    String? id;

    MenuId({
        this.id,
    });

    factory MenuId.fromJson(Map<String, dynamic> json) => MenuId(
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
    };
}
