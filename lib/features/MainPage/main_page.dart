import 'package:flutter/material.dart';
import 'package:mywebsite/features/MainPage/widgets/main_content_widget.dart';
import 'package:mywebsite/features/MainPage/widgets/side_bar_container.dart';

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,  // Number of tabs
      child: Scaffold(
        body: Row(
          children: [
            // Sidebar section
            SideBarContainer(),
            // Main content section
            MainContentContainer(),
          ],
        ),
      ),
    );
  }
}
