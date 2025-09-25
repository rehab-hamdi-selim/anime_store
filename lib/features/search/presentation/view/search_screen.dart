import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Screen',
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.w700,
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
