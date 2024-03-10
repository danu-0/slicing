import 'package:flutter/material.dart';
import 'package:slicing/theme/theme.dart';

class textbuton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color requiredColor;

  textbuton({
    required this.onPressed,
    required this.text,
    required this.requiredColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account ? ",
              style: TextStyle(
                color: secondarytext,
                fontSize: 12,
              ),
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                text,
                style: TextStyle(
                  color: requiredColor,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
