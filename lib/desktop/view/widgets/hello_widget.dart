import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constant/app_colors.dart';
import 'package:my_portfolio/core/helper/extensions.dart';
import 'package:my_portfolio/desktop/view/widgets/about_me_button.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Padding(
      padding: EdgeInsets.only(
        right: screenWidth * 138 / screenWidth,
        left: screenWidth * 138 / screenWidth,
        top: screenHeight * 209 / screenHeight,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, I\'m',
                  textScaleFactor: textScale,
                  style: GoogleFonts.poppins(
                    fontSize: 32 * textScale,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  'Mohand Adel',
                  textScaleFactor: textScale,
                  style: GoogleFonts.poppins(
                    fontSize: 52 * textScale,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  textScaler: TextScaler.linear(textScale),
                  'I’m a passionate Flutter developer with over 2 years of experience  in building high-quality, scalable, and user-friendly applications. My focus is on creating responsive designs and seamless user experiences for web, mobile, and desktop platforms.',
                  style: GoogleFonts.poppins(
                    fontSize: 18 * textScale,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                29.verticalSpace,
                Row(
                  children: [
                    SizedBox(
                      height: screenHeight * 48 / screenHeight,
                      width: screenWidth * 160 / screenWidth,
                      child: AboutMeButton(
                        buttonText: 'About Me',
                        textStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                          fontSize: textScale * 16,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              height: screenHeight * 486 / screenHeight,
              width: screenWidth * 500 / screenWidth,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: screenWidth * 486 / screenWidth,
                    height: screenHeight * 486 / screenHeight,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6B4DE2), // Purple circle background
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    top: -100,
                    left: screenHeight * 30 / screenHeight,
                    child: ClipOval(
                      child: SizedBox(
                        width:
                            screenWidth * 500 / screenWidth, // Adjust as needed
                        height: screenWidth * 500 / screenWidth,
                        child: Image.asset(
                          'assets/images/20231006_172420-removebg.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        width: screenWidth * 486 / screenWidth,
                        height: screenWidth * 486 / screenWidth / 2.7,
                        color: AppColors.darkColor,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
