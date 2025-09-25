import 'package:anime_store/core/theme/colors.dart';
import 'package:anime_store/features/upgrade/presentation/view/widgets/paid_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({super.key});

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen> {
  String selectedPlan = "Monthly";
  // Default option
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/background/upgrade_background.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Rocket Boy 1.png'),
            Column(
              children: [
                SizedBox(
                  width: screenWidth * 0.6,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Seamless Anime Experience, Ad-Free.',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.7,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Enjoy unlimited anime streaming without interruptions.',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      color: MyColors.myGrey,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                SubscriptionPlanCard(
                  price: 5,
                  type: 'Monthly',
                  duration: '/Month',
                  isSelected: selectedPlan == 'Monthly',
                  onTap: () {
                    setState(() {
                      selectedPlan = 'Monthly';
                    });
                  },
                ),
                SizedBox(height: screenHeight * 0.02),
                SubscriptionPlanCard(
                  price: 50,
                  type: 'Annually',
                  duration: '/Year',
                  isSelected: selectedPlan == 'Annually',
                  onTap: () {
                    setState(() {
                      selectedPlan = 'Annually';
                    });
                  },
                ),
                SizedBox(height: screenHeight * 0.08),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.appColor,
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 100,
                    ),
                    child: Text(
                      'Continue',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
