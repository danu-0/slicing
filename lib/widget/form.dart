import 'package:flutter/material.dart';
import 'package:slicing/theme/theme.dart';

class CustomForm extends StatelessWidget {
  final String desk;
  final String image;

  const CustomForm({
    required this.desk,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          desk,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: primarytext,
          ),
        ),
        SizedBox(height: 8),
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: bg2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 18,
                height: 19,
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 14,
                    color: secondarytext,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Your $desk',
                    hintStyle: TextStyle(color: secondarytext),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
