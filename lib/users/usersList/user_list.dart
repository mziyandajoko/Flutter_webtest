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
          id: u['id'].toString(),
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
          title: const Text('User List'),
        ),
        body: FutureBuilder<List<UserModel>>(
          future: _getuserData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No data found'));
            }

            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var user = snapshot.data![index];
                return ListTile(
                  title: Text(user.name ?? 'No name'),
                  subtitle: Text(user.username ?? 'No username'),
                  trailing: Text(user.id ?? 'No ID'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
