import 'package:anime_store/features/home/data/models/characters.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/colors.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character});
  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 55,
          child: Image.asset(
            character.image,
            fit: BoxFit.cover,
            height: screenHeight * 0.25,
            width: screenWidth * 0.45,
          ),
        ),
        SizedBox(height: screenHeight * 0.01),
        Text(
          character.title,
          style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Text(
          character.subTitle,
          style: GoogleFonts.raleway(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: MyColors.myGrey,
          ),
        ),
      ],
    );
  }
}
