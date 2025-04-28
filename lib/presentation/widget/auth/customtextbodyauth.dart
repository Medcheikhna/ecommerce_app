

import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

class Customtextbodyauth extends StatelessWidget {
  final String text;
  const Customtextbodyauth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22),
      child: Text(
        text,
        style: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
