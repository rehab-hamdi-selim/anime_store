import 'package:anime_store/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButton extends StatelessWidget {
  ActionButton({
    super.key,
    required this.title,
    this.color,
    this.icon,
    this.fontSize,
  });
  final String title;
  Color? color;
  IconData? icon;
  double? fontSize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Color(0XFF8D8998),
      ),
      onPressed: () {
        if (title == 'Preview') {
          Navigator.pushNamed(context, upgradePlanScreen);
        }
      },
      child: Row(
        children: [
          icon != null ? Icon(icon, color: Colors.white) : SizedBox(),
          SizedBox(width: 4),
          Text(
            title,
            style: GoogleFonts.raleway(
              fontSize: fontSize ?? 13,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
