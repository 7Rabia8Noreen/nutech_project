import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CProfileDropdownButtonFormField extends StatelessWidget {
  /* final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Colors.transparent, width: 0));*/

  final bool isExpanded;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final Widget? icon;
  final List<DropdownMenuItem<dynamic>>? items;
  final void Function(dynamic)? onSaved;
  final void Function(dynamic)? onChanged;

  CProfileDropdownButtonFormField(
      {Key? key,
      this.isExpanded = false,
      this.prefixIcon,
      this.suffixIcon,
      this.icon,
      required this.hintText,
      required this.items,
      this.onSaved,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<dynamic>(
      // value: _currentOccupationSelectedValue,
      isExpanded: true,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: Colors.transparent,
        /* border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        contentPadding: EdgeInsets.symmetric(vertical: 20.h),
        //filled: true,
        // fillColor: Colors.transparent,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),*/
      ),
      icon: icon,
      items: items,
      onSaved: onSaved,
      //iconSize: 70,
    );
  }
}
