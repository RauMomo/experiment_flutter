import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.isOn,
  });

  final String icon;
  final bool isOn;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        icon,
        scale: 1.8,
        color: isOn == true ? Colors.black : Colors.grey,
      ),
    );
  }
}
