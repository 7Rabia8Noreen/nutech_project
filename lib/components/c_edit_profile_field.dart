import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CEditProfileFormField extends StatelessWidget {
  final TextEditingController? testControllor;
  final String hintText;
  final String? initialValue;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final bool? showCursor;
  void Function()? onTap;
  final String? Function(String?)? validator;
  void Function(String?)? onSaved;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final ToolbarOptions? toolbarOptions;
  // String obscuringCharacter = '•';
  CEditProfileFormField(
      {this.testControllor,
      required this.hintText,
      this.initialValue,
      this.keyboardType,
      this.textInputAction,
      this.showCursor,
      this.onTap,
      this.validator,
      this.onSaved,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.readOnly = false,
      this.onChanged,
      this.onEditingComplete,
      this.onFieldSubmitted,
      // required this.obscuringCharacter,
      this.toolbarOptions});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: testControllor,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      initialValue: initialValue,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      readOnly: readOnly,
      showCursor: showCursor,
      onTap: onTap,
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      // obscuringCharacter: obscuringCharacter,
      toolbarOptions: toolbarOptions,
    );
  }
}
