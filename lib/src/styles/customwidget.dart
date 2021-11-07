import 'package:flutter/material.dart';

TextFormField customFormField({
  String labelText = '',
  inputFormatters,
  keyboardType,
  onChanged,
  bool obscureText = false,
  String initialValue = '',
  decoration,
}) {
  return TextFormField(
    inputFormatters: inputFormatters,
    keyboardType: keyboardType,
    onChanged: onChanged,
    obscureText: obscureText,
    initialValue: '',
    style: const TextStyle(
        fontFamily: "Book-Antiqua", fontSize: 17, color: Colors.black),
    decoration: decoration,
  );
}

InputDecoration customInputDecoration({
  String hintText = '',
  prefix,
  prefixIcon,
  suffix,
  suffixIcon,
}) {
  return InputDecoration(
    hintText: hintText,
    contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    prefix: prefix,
    prefixIcon: prefixIcon,
    suffix: suffix,
    suffixIcon: suffixIcon,
  );
}

MaterialButton customMaterialButton({child, onPressed, padding, color}) {
  return MaterialButton(
    elevation: 1.0,
    colorBrightness: Brightness.light,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    onPressed: onPressed,
    padding: padding,
    color: color,
    child: child,
  );
}

// Optional part

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
