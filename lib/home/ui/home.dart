import 'package:flutter/material.dart';

import '../../Widget/Button/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Make it reposnsive'),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                          'Connecting We charge as little as posible No subscription'),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            label: 'Button label',
                            onPressed: () {
                              ('button Pressed');
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CustomButton(
                            label: 'Button label',
                            onPressed: () {
                              ('button Pressed');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Text('Right'),
              ],
            ),
          ),
        ));
  }
}
