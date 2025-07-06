import 'package:flutter/material.dart';
import 'package:listicle/utilities/constant.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool? showButtonTitle;
  final Color? backgroundColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.showButtonTitle = true,
    this.backgroundColor = AppColors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (showButtonTitle ?? false)
          ? double.infinity
          : MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            (showButtonTitle ?? false)
                ? Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Image.asset(
                    'assets/google.png',
                    width: 24,
                    height: 24,
                  )
          ],
        ),
      ),
    );
  }
}
