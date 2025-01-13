import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constant/app_colors.dart';
import 'package:my_portfolio/core/helper/extensions.dart';
import 'package:my_portfolio/desktop/view/widgets/about_me_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

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
              'Projects',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
            16.verticalSpace,
            Text(
              'I have worked on many projects over the course of being a Mobile Developer, here are a few of my live, real-world projects',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
              textScaler: TextScaler.linear(textScale),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            Row(children: [
              Container(
                width: screenWidth * 343 / screenWidth,
                height: screenHeight * 417 / screenHeight,
                decoration: ShapeDecoration(
                  color: const Color(0xFF31313E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: screenWidth * 311 / screenWidth,
                        height: screenHeight * 173 / screenHeight,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF31313E),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 2, color: Color(0xFF7562E0)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Expanded(
                          child: Image.asset(
                            'assets/images/tadabar.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    16.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 16 / screenWidth,
                      ),
                      child: Text(
                        'Tadabar',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 16 / screenWidth,
                      ),
                      child: Text(
                        'A Islamic app that helps you to read the Quran and listen to it with a beautiful design and a lot of features',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                        textScaler: TextScaler.linear(textScale),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    16.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 16 / screenWidth,
                      ),
                      child: AboutMeButton(
                          buttonText: 'View Project',
                          textStyle: GoogleFonts.poppins(
                              color: AppColors.white, fontSize: 16),
                          onPressed: () {
                          
                            _launchUrl(
                                'https://play.google.com/store/apps/details?id=com.binaryplus.tadabar',
                                );
                          }),
                    ),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
