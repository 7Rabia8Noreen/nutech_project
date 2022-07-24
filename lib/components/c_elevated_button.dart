import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CElevatedButton extends StatelessWidget {
  CElevatedButton({
    required this.child,
    required this.onPressed,
    this.focusNode,
    this.onFocusChange,
    this.onHover,
    this.onLongPress,
    this.key,
  }) : super(key: key);

  void Function() onPressed;
  final Widget child;
  final FocusNode? focusNode;
  final void Function(bool)? onFocusChange;
  final void Function(bool)? onHover;
  final void Function()? onLongPress;
  final Key? key;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      onHover: onHover,
      onLongPress: onLongPress,
      key: key,
    );
  }
}
