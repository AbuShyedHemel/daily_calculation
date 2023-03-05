import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final Color baseColor;
  final Color borderColor;
  final Color errorColor;
  final TextInputType inputType;
  final bool obscureText;
  final Function validator;
  //final Function onChanged;

  CustomTextField(
      {required this.hint,
      required this.controller,
      //required this.onChanged,
      required this.baseColor,
      required this.borderColor,
      required this.errorColor,
      this.inputType = TextInputType.text,
      this.obscureText = false,
      required this.validator});

  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late Color currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = widget.borderColor;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color.fromARGB(213, 233, 234, 248),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: currentColor, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          textAlign: TextAlign.center,
          obscureText: widget.obscureText,
          // onChanged: (text) {
          //   // if (widget.onChanged != null) {
          //   //   widget.onChanged(text);
          //   // }
          //   // setState(() {
          //   //   if (!widget.validator(text) || text.length == 0) {
          //   //     currentColor = widget.errorColor;
          //   //   } else {
          //   //     currentColor = widget.baseColor;
          //   //   }
          //   // });
          // },
          keyboardType: widget.inputType,
          controller: widget.controller,
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              color: Colors.white70,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.bold,
            ),
            border: InputBorder.none,
            hintText: widget.hint,
          ),
        ),
      ),
    );
  }
}
