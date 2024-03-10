import 'package:flutter/material.dart';
import 'package:slicing/theme/theme.dart';

class buton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const buton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: primarytext, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
