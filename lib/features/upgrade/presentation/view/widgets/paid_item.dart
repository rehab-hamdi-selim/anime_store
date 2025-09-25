import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/colors.dart';

class SubscriptionPlanCard extends StatelessWidget {
  const SubscriptionPlanCard({
    super.key,
    required this.price,
    required this.type,
    required this.duration,
    required this.isSelected,
    required this.onTap,
  });

  final int price;
  final String type;
  final String duration;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: isSelected ? Color(0XFF18153F) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/paid.png', fit: BoxFit.cover),
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$$price USD ',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '/ $duration',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: MyColors.myGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Include Family Sharing',
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: MyColors.myGrey,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 15,
                child: isSelected ? Icon(Icons.done, size: 20) : SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
