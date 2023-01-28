import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? preffixIcon;
  final IconData? suffixIcon;
  final TextInputType type;
  final bool isPassword;

  //
  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.preffixIcon,
    this.suffixIcon,
    this.type = TextInputType.name,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      keyboardType: type,
      obscureText: isPassword,
      onChanged: (value) => formValues[formProperty] = value,
      // validator: (value) {
      //   if (value == null) return 'Este campo es requerido';
      //   return value.length < 3 ? 'Min. 3 letras' : null;
      // },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        prefixIcon: preffixIcon == null ? null : Icon(preffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
