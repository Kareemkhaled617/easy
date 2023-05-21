import 'package:esay/resources/color_manger.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorManager.primary,
        ),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
    );
  }
}
