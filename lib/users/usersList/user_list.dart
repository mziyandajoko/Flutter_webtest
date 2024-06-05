import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:web_test/data/user_model.dart';
import 'dart:convert';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  Future<List<UserModel>> _getuserData() async {
    var res = await http.get(
      Uri.https('jsonplaceholder.typicode.com', 'users'),
    );

    var jsonData = json.decode(res.body);

    List<UserModel> users = [];

    for (var u in jsonData) {
      UserModel user = UserModel(
          username: u['username'],
          id: u['id'],
          name: u['name'],
          email: u['email']);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('user List'),
        ),
        body: FutureBuilder(
            future: _getuserData(),
            builder: (context, snapshot) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index].name),
                  );
                },
              );
            }),
      ),
    );
  }
}
