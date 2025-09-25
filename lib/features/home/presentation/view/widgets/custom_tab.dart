import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/colors.dart';

class CustomTab extends StatelessWidget {
  final String title;
  final bool isActive;

  const CustomTab({super.key, required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isActive ? MyColors.appColor : Colors.white,
      ),
      child: Text(
        title,
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.w700,
          color: isActive ? Colors.white : MyColors.appColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
