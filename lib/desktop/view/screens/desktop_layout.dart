import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constant/app_colors.dart';
import 'package:my_portfolio/desktop/view/widgets/desktop_layout_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkColor,
      body: DesktopLayoutBody(),
    );
  }
}
