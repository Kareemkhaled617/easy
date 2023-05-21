import 'package:esay/resources/color_manger.dart';
import 'package:flutter/material.dart';

class DefaultTextForm extends StatelessWidget {
  const DefaultTextForm(
      {Key? key,
      required this.hint,
      required this.type,
      required this.onTap,
      required this.controller,
      this.icon})
      : super(key: key);
  final String hint;
  final Widget? icon;
  final TextInputType type;
  final TextEditingController controller;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      onChanged: (value) {
        //Do something with the user input.
      },
      decoration: InputDecoration(
        prefixIcon: icon!,
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0.2),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }
}
