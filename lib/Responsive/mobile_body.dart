import 'package:flutter/material.dart';
import 'package:web_test/Widget/Button/Custom_button.dart';
import 'package:web_test/users/usersList/user_list.dart';

import '../Widget/custom_text/heading_text.dart';

class Mobilebody extends StatelessWidget {
  const Mobilebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Expanded(
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1509395286499-2d94a9e0c814?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const HeadingText(
                      labelText:
                          'Connecting \nWe charge \nas little as possible \nNo subscription',
                      fontSize: 35,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        CustomButton(
                          label: 'App Store',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserList(),
                              ),
                            );
                          },
                          icon: Icons.apple,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomButton(
                          label: 'google play',
                          onPressed: () {},
                          icon: Icons.play_arrow,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
