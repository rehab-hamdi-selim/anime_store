import 'package:anime_store/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.icon,
    required this.value,
    required this.word,
  });
  final IconData icon;
  final String value;
  final String word;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Icon(icon, color: MyColors.myGrey),
        Text(
          value,
          style: GoogleFonts.inter(fontSize: 14, color: Colors.white),
        ),
        Text(
          word,
          style: GoogleFonts.raleway(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
