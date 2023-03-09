import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'view/homepage/memberinput.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Daily Calculation",
      home: MemberInput(),
    );
  }
}
