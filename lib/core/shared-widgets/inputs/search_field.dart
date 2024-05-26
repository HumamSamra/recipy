import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DefaultSearchField extends StatelessWidget {
  final EdgeInsets? margin;
  final String? placeholder;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final Function(String value)? onChanged;
  const DefaultSearchField({
    super.key,
    this.margin,
    this.placeholder,
    this.prefixIcon,
    this.controller,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon ?? Icons.search),
          border: InputBorder.none,
          hintText: placeholder ?? 'Search...',
        ),
      ),
    );
  }
}
