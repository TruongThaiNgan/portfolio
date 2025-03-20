import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/presentation/about_me/about_me_screen.dart';
import 'package:flutter_boilerplate/presentation/blogs/blogs_screen.dart';
import 'package:flutter_boilerplate/presentation/contact/contact_screen.dart';
import 'package:flutter_boilerplate/presentation/old_projects/old_projects_screen.dart';
import 'package:flutter_boilerplate/presentation/resume/resume_screen.dart';
import 'package:flutter_boilerplate/presentation/widgets/card_wrapper.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      content: DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Column(
          children: [
            _header(),
            const SizedBox(
              height: 8,
            ),
            const Expanded(
                child: TabBarView(
              children: <Widget>[
                AboutMeScreen(),
                ResumeScreen(),
                OldProjectsScreen(),
                BlogsScreen(),
                ContactScreen(),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return const TabBar(
      tabs: <Widget>[
        Tab(
          text: "About me",
        ),
        Tab(
          text: "Resume",
        ),
        Tab(
          text: "Old Projects",
        ),
        Tab(
          text: "Blogs",
        ),
        Tab(
          text: "Contact me",
        ),
      ],
      labelColor: AppColors.primary,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      unselectedLabelColor: AppColors.text,
      indicatorColor: AppColors.primary,
    );
  }
}
