import 'dart:convert';

UserClient userClientFromJson(String str) => UserClient.fromJson(json.decode(str));

String userClientToJson(UserClient data) => json.encode(data.toJson());

class UserClient {
    String id;
    String email;
    List<String> cedula;
    String name;
    String password;

    UserClient({
        required this.id,
        required this.email,
        required this.cedula,
        required this.name,
        required this.password,
    });

    factory UserClient.fromJson(Map<String, dynamic> json) => UserClient(
        id: json["id"],
        email: json["email"],
        cedula: List<String>.from(json["cedula"].map((x) => x)),
        name: json["name"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "cedula": List<dynamic>.from(cedula.map((x) => x)),
        "name": name,
        "password": password,
    };
}