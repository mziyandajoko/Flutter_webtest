import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../data/user_model.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  getuserData() async {
    var response = await http.get(
      Uri.https('jsonplaceholder.typicode.com', 'users'),
    );
    var jasonData = jsonDecode(response.body);
    //store jasonData into List

    List<UserModel> users = [];

    for (var u in jasonData) {
      UserModel user = UserModel(u['name'], u['email'], u['username'], u['id']);

      users.add(user);
      return users;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('user List'),
        ),
        body: Card(
          child: FutureBuilder(
              future: getuserData(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return const SizedBox(
                    height: 30,
                    width: 30,
                    child: Text('loading data'),
                  );
                } else {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text('test'),
                      );
                    },
                  );
                }
              }),
        ),
      ),
    );
  }
}
