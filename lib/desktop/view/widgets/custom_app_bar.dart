import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constant/app_colors.dart';
import 'package:my_portfolio/core/helper/extensions.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.selectedIndex,
    this.onItemSelected,
  });

  final int? selectedIndex;
  final ValueChanged<int>? onItemSelected;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final List<String> menuItems = ['Home', 'About', 'Projects', 'Contact'];

    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 19 / screenHeight,
        left: screenWidth * 160 / screenWidth,
        right: screenWidth * 160 / screenWidth,
      ),
      child: Row(
        children: [
          Flexible(
            child: Text(
              'Mohand Adel',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          ...List.generate(
            menuItems.length,
            (index) => Row(
              children: [
                GestureDetector(
                  onTap: () {
                    onItemSelected!(index); // Trigger the callback
                  },
                  child: Flexible(
                    child: Text(
                      menuItems[index],
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: selectedIndex == index
                            ? AppColors.primaryColor // Highlighted color
                            : AppColors.white,
                        // Default color
                      ),
                    ),
                  ),
                ),
                if (index != menuItems.length - 1) 52.horizontalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
