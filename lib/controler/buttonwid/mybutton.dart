// import 'package:flutter/material.dart';

// class MyButton extends StatefulWidget {
//   final Function onPressed;

//   const MyButton({
//     super.key,
//     required this.onPressed,
//   });

//   @override
//   State<MyButton> createState() => _MyButtonState();
// }

// class _MyButtonState extends State<MyButton> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return OutlinedButton(
//       onPressed: () => widget.onPressed,
//       child: Text("data"),
//     );
//   }
// }
import 'package:flutter/material.dart';

final ButtonStyle buttonstyles = ElevatedButton.styleFrom(
    maximumSize: Size(100, 50),
    shadowColor: Colors.white,
    backgroundColor: Colors.transparent,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100))));
