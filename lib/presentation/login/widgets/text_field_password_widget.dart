import 'package:flutter/material.dart';

class TextFieldPasswordWidget extends StatefulWidget {
  const TextFieldPasswordWidget(
      {super.key, this.hintText = 'Password', this.obscureText = false});

  final String hintText;
  final bool obscureText;

  @override
  State<TextFieldPasswordWidget> createState() =>
      _TextFieldPasswordWidgetState();
}

class _TextFieldPasswordWidgetState extends State<TextFieldPasswordWidget> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Password wajib diisi";
        }
        return null;
      },
      obscureText: _passwordVisible,
      style: const TextStyle(color: Color(0xFF262626), fontSize: 14),
      decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off),
            color: Colors.black26,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          prefix: const Padding(padding: EdgeInsets.only(left: 15.0)),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.black26),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                color: Colors.black12,
                width: 1,
              )),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                color: Colors.red,
                width: 1,
              )),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                color: Colors.red,
                width: 1,
              )),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                color: Colors.black12,
                width: 1,
              ))),
    );
  }
}
