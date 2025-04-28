// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';



class CustumTextFormAuth extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;
  final IconData iconData;
  final bool isNumber;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final void Function()? onTapIcon;
  const CustumTextFormAuth({
    super.key,
    required this.hinttext,
    required this.mycontroller,
    required this.iconData,
    required this.validator,
    required this.isNumber,
    this.obscureText,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText == null || obscureText == false ? false : true,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      controller: mycontroller,
      validator: validator,
      style: TextStyle(color: AppColor.primaryColor),
      decoration: InputDecoration(
        suffixIcon: InkWell(onTap: onTapIcon, child: Icon(iconData)),
        hintText: hinttext,
        hintStyle: const TextStyle(color: AppColor.primaryColor),
        border: const UnderlineInputBorder(),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.primaryColor)),
      ),
    );
  }
}
