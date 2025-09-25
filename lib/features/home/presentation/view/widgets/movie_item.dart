import 'package:anime_store/core/constants/strings.dart';
import 'package:anime_store/features/home/data/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/theme/colors.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, charactersDetailsScreen);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  movie.image,
                  fit: BoxFit.cover,
                  height: screenHeight * 0.25,
                  width: screenWidth * 0.45,
                ),
              ),
              Positioned(
                top: 10,
                right: 25,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: MyColors.appColor, size: 18),
                      Text(
                        '${movie.rate}',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Text(
            movie.title,
            style: GoogleFonts.raleway(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            movie.subTitle,
            style: GoogleFonts.raleway(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: MyColors.myGrey,
            ),
          ),
        ],
      ),
    );
  }
}
