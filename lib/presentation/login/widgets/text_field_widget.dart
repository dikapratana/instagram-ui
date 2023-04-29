import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, this.hintText = ''});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$hintText wajib diisi";
        }
        return null;
      },
      style: const TextStyle(color: Color(0xFF262626), fontSize: 14),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          prefix: const Padding(padding: EdgeInsets.only(left: 15.0)),
          hintText: hintText,
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
