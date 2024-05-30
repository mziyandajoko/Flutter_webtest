import 'package:flutter/material.dart';
import 'package:web_test/Widget/custom_text/heading_text.dart';

import '../../Widget/Button/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Nav should be responsive'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(children: [
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
                      ),
                      Row(
                        children: [
                          CustomButton(label: 'btn1', onPressed: () {}),
                          CustomButton(label: 'btn2', onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Column(
                children: [
                  Expanded(
                    child: Image(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1509395286499-2d94a9e0c814?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
