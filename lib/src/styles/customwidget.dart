import 'package:flutter/material.dart';

TextFormField customFormField({
  String labelText = '',
  inputFormatters,
  keyboardType,
  onChanged,
  bool autofocus = false,
  bool obscureText = false,
  String initialValue = '',
  String hintText = '',
  prefixIcon,
  suffixIcon,
  required InputDecoration decoration,
}) {
  return TextFormField(
    inputFormatters: inputFormatters,
    keyboardType: keyboardType,
    onChanged: onChanged,
    autofocus: autofocus,
    obscureText: obscureText,
    initialValue: '',
    style: const TextStyle(
        fontFamily: "Book-Antiqua", fontSize: 17, color: Colors.black),
    decoration: InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
  );
}

TextButton customTextButton() {
  return TextButton(
    onPressed: () => {},
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 20.0),
      ),
      side: MaterialStateProperty.all(const BorderSide(color: Colors.black54)),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
    ),
    child: const Text(
      'Save',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
      ),
    ),
  );
}

MaterialButton customMaterialButton({child, onPressed, color}) {
  return MaterialButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    onPressed: onPressed,
    padding: const EdgeInsets.fromLTRB(100, 8, 100, 8),
    color: color,
    child: child,
  );
}
