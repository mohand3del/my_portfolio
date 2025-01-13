import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constant/app_colors.dart';
import 'package:my_portfolio/core/helper/extensions.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 136 / screenWidth,
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
            29.verticalSpace,
            Text(
              'I’m a passionate Flutter developer with over 2 years of experience in building high-quality, scalable, and user-friendly applications. My focus is on creating responsive designs and seamless user experiences for web, mobile, and desktop platforms.',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
              textScaler: TextScaler.linear(textScale),
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
            Row(
              children: [
                Text(
                  '3+',
                  style: GoogleFonts.poppins(
                    fontSize: 96,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ),
                22.horizontalSpace,
                Flexible(
                  child: Text(
                    'Years of experience. Specialised in building apps, while ensuring a seamless Mobile experience for end users.',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Container(
              width: 256,
              height: 254,
              decoration: const BoxDecoration(
                color: Color(0xFF7562E0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: screenWidth * 24 / screenWidth),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/android.png",
                        height: 42,
                        width: 42,
                      ),
                      16.verticalSpace,
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'MOBILE DEVELOPMENT',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
