import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:nutech/utils/country.dart';

class CDropdownButtonFormField extends StatelessWidget {
  /*final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Colors.transparent, width: 0));*/

  final bool isExpanded;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final List<DropdownMenuItem<dynamic>>? items;
  final void Function(dynamic)? onSaved;
  final void Function(dynamic)? onChanged;
  // final List<DropdownMenuItem<Country>>? itemsCountry;

  CDropdownButtonFormField(
      {Key? key,
      this.isExpanded = false,
      this.prefixIcon,
      this.suffixIcon,
      required this.hintText,
      required this.items,
      //this.itemsCountry,
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
      ),
      items: items,
      onSaved: onSaved,
    );
  }
}
