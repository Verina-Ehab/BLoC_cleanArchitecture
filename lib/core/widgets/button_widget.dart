import 'package:flutter/material.dart';

import '../themes/light_theme.dart';

class ButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  // final bool isUpdatePost;
  final Widget? icon;
  final String? label;
  final Color? btnColor;

  const ButtonWidget({
    Key? key,
    required this.onPressed,
    // required this.isUpdatePost, 
    this.icon, this.label, this.btnColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          btnColor ?? primaryColor,
        ),
      ),
        onPressed: onPressed,
        icon: icon ?? Container(),
        label: Text(label ?? ""));
  }
}
// Colors.redAccent