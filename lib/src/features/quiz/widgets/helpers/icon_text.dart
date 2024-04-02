import 'package:flutter/material.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';

class IconFromTextWidget extends StatelessWidget {
  final IconData icon;

  const IconFromTextWidget({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      String.fromCharCode(icon.codePoint),
      style: TextStyle(
        inherit: false,
        color: AppColors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.w600,
        fontFamily: icon.fontFamily,
        package: icon.fontPackage,
      ),
    );
  }
}
