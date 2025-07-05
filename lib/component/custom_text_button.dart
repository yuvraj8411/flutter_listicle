import 'package:flutter/material.dart';
import 'package:listicle/utilities/constant.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? style;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
