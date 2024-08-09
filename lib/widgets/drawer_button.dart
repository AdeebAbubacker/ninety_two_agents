import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';

class DrawerButtons extends StatelessWidget {
  final String title;
  final String icon;
  final bool isSelected;
  final VoidCallback onTap;

  const DrawerButtons({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: isSelected ? const Color(0xFF74C52C) : const Color(0XFF172038),
        width: double.infinity,
        height: 48,
        child: Row(
          children: [
            const SizedBox(width: 30),
            Image.asset(
              icon,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Text(title, style: TextStyles.roboto14ColorFF)
          ],
        ),
      ),
    );
  }
}
