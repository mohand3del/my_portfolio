import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/extensions.dart';
import 'package:my_portfolio/desktop/view/widgets/custom_app_bar.dart';
import 'package:my_portfolio/desktop/view/widgets/hello_widget.dart';

import 'about_me.dart';
import 'projects_widget.dart';

class DesktopLayoutBody extends StatefulWidget {
  const DesktopLayoutBody({super.key});

  @override
  State<DesktopLayoutBody> createState() => _DesktopLayoutBodyState();
}

class _DesktopLayoutBodyState extends State<DesktopLayoutBody> {
  int _selectedIndex = 0; // Initial selected index

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  final GlobalKey _helloKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            selectedIndex: _selectedIndex,
            onItemSelected: _onItemSelected,
            scrollKeys: [
              _helloKey,
              _aboutKey,
              _projectsKey,
              _contactKey,
            ],
          ),
          HelloWidget(
            key: _helloKey,
          ),
          233.verticalSpace,
          AboutMe(
            key: _aboutKey,
          ),
          80.verticalSpace,
          ProjectsWidget(
            key: _projectsKey,
          ),
          80.verticalSpace,
          
        ],
      ),
    );
  }
}
