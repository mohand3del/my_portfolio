import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop/view/widgets/custom_app_bar.dart';
import 'package:my_portfolio/desktop/view/widgets/hello_widget.dart';

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            selectedIndex: _selectedIndex,
            onItemSelected: _onItemSelected,
          ),
          HelloWidget(),
        ],
      ),
    );
  }
}
