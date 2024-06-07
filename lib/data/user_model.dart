class UserModel {
  String? name;
  String? username;
  String? email;
  String? id;

  UserModel({this.name, this.username, this.email, this.id});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    name = json['name'];
    username = json['username'];
    email = json['email'];
  }
}
