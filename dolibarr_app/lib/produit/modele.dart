// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
    Welcome({
        required this.id,
        required this.entity,
        required this.ref,
        this.userAuthor,
        required this.label,
        this.description,
        this.other,
        required this.type,
        required this.price,
        required this.duration,
    });

    String id;
    String entity;
    String ref;
    dynamic userAuthor;
    String label;
    String? description;
    dynamic other;
    String type;
    String price;
    String duration;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        entity: json["entity"],
        ref: json["ref"],
        userAuthor: json["user_author"],
        label: json["label"],
        description: json["description"],
        other: json["other"],
        type: json["type"],
        price: json["price"],
        duration: json["duration"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "entity": entity,
        "ref": ref,
        "user_author": userAuthor,
        "label": label,
        "description": description,
        "other": other,
        "type": type,
        "price": price,
        "duration": duration,
    };
}
