import 'package:flutter/material.dart';
import 'package:project/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  // constructor untuk menerima teks dan fungsi onpressed
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
      ),
      child: Text(
        text,
        style: TextStyle(
          color: primaryColor,
        ),
      ),
    );
  }
}