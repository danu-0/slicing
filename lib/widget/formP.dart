import 'package:flutter/material.dart';
import 'package:slicing/theme/theme.dart';

class FormP extends StatelessWidget {
  final String hintText;
  final String description;
  final Color textColor;

  const FormP({
    Key? key,
    required this.hintText,
    required this.description,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description,
            style: TextStyle(
              fontSize: 13,
              color: secondarytext,
            ),
          ),
          TextField(
            style: TextStyle(color: textColor),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: primarytext, fontSize: 16),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[600]!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
