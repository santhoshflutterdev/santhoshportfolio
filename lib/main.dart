import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:santhosh_portfolio/About/aboutme.dart';
import 'package:santhosh_portfolio/Domain/domain.dart';
import 'package:santhosh_portfolio/contact/contact_me.dart';
import 'package:santhosh_portfolio/project/project.dart';
import 'package:santhosh_portfolio/skills/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Domain(),
    );
  }
}
