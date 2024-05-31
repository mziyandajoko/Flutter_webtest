import 'package:flutter/material.dart';
import 'package:web_test/Responsive/desktop_body.dart';
import 'package:web_test/Responsive/mobile_body.dart';
import 'package:web_test/Responsive/resposive_layout.dart';
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
        body: const ResponsiveLayout(
          mobileBody: Mobilebody(),
          desktopBody: DesktopBody(),
        ),
      ),
    );
  }
}
