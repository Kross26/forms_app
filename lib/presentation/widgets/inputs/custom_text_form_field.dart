import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMesagge;
  final Icon? inputIcon;
  final bool obscureText;
  final Function(String?)? onChange;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.errorMesagge,
    this.inputIcon,
    this.obscureText = false,
    this.onChange,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
        // borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(15));
    return TextFormField(
      onChanged: onChange,
      validator: validator,
      obscureText: obscureText,
      // decoration de los inputs
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder:
            border.copyWith(borderSide: BorderSide(color: colors.primary)),
        errorBorder:
            border.copyWith(borderSide: BorderSide(color: Colors.red.shade800)),
        focusedErrorBorder:
            border.copyWith(borderSide: BorderSide(color: Colors.red.shade800)),
        isDense: true,
        label: label != null ? Text(label!) : null,
        hintText: hint,
        prefixIcon: inputIcon,
        errorText: errorMesagge,
        focusColor: colors.primary,
        // prefixIcon: Icon(
        //   Icons.supervised_user_circle_outlined,
        //   color: colors.primary,
        // )
      ),
    );
  }
}
