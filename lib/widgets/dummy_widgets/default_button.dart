import 'package:flutter/material.dart';

import '../../config/theme/colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color = AppColors.primaryBlue,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String label;
  final void Function() onPressed;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: textColor,
        fixedSize: Size(screenWidth, 40),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      onPressed: onPressed,
    );
  }
}
