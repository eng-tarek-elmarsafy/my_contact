import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final int? maxLines;
  final bool? obscureText;
  final String hintText;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  const CustomTextFormField(
      {super.key,
      this.maxLines,
      required this.hintText,
      this.onSaved,
      this.onChanged,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines ?? 1,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        label: Text(hintText),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: color ?? Colors.white),
      );
}
