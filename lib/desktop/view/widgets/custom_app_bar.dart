import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constant/app_colors.dart';
import 'package:my_portfolio/core/helper/extensions.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    this.selectedIndex,
    this.onItemSelected,
    this.scrollKeys,
  });

  final int? selectedIndex;
  final ValueChanged<int>? onItemSelected;
  final List<GlobalKey>? scrollKeys; // List of keys for each section

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> menuItems = ['Home', 'About', 'Projects', 'Contact'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 160),
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
          const Spacer(flex: 2),
          ...List.generate(
            menuItems.length,
            (index) => Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Scroll to section if scrollKeys are provided
                    if (widget.scrollKeys != null &&
                        index < widget.scrollKeys!.length) {
                      scrollToSection(widget.scrollKeys![index]);
                    }

                    // Trigger the callback if provided
                    if (widget.onItemSelected != null) {
                      widget.onItemSelected!(index);
                    }
                  },
                  child: Text(
                    menuItems[index],
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: widget.selectedIndex == index
                          ? AppColors.primaryColor // Highlighted color
                          : AppColors.white, // Default color
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
