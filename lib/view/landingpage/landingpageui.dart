import 'package:flutter/material.dart';

class DesignLand extends StatelessWidget {
  const DesignLand({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: size.height / 4,
          width: size.width,
          decoration: const BoxDecoration(color: Colors.blueAccent),
        ),
      ],
    );
  }
}
