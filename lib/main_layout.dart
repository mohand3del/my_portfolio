

import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop/view/screens/desktop_layout.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return DesktopLayout();
        
      } else {
        return Container(
          color: Colors.green,
          child: const Center(
            child: Text('Mobile Layout'),
          ),
        );
      }
    });
  }
}