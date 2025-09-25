import 'package:anime_store/core/theme/colors.dart';
import 'package:anime_store/features/details/presentation/view/widgets/action_button.dart';
import 'package:anime_store/features/details/presentation/view/widgets/info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/background/details_background.png',
            ),
          ),
        ),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            children: [
              Image.asset(
                'assets/images/movies/movie4.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(title: 'Dark Fantasy'),
                  ActionButton(title: 'Action'),
                  ActionButton(title: 'Adventure'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Column(
                  spacing: 5,
                  children: [
                    Divider(color: MyColors.dividerColor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Info(
                          icon: Icons.remove_red_eye_sharp,
                          value: '2.3M',
                          word: 'views',
                        ),
                        Info(
                          icon: Icons.waving_hand_sharp,
                          value: '2K',
                          word: 'clap',
                        ),
                        Info(
                          icon: Icons.movie_filter_sharp,
                          value: '4',
                          word: 'Seasons',
                        ),
                      ],
                    ),
                    Divider(color: MyColors.dividerColor),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  spacing: 5,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.red,
                      size: 35,
                    ),
                    Expanded(
                      child: Text(
                        'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                        style: GoogleFonts.raleway(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0XFF16103C),
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionButton(
              title: 'Preview',
              icon: Icons.stop_circle_rounded,
              fontSize: 15,
            ),
            ActionButton(
              title: 'Watch Now',
              icon: Icons.remove_red_eye_outlined,
              color: MyColors.appColor,
              fontSize: 15,
            ),
          ],
        ),
      ),
    );
  }
}
