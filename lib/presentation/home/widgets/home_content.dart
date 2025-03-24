import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/presentation/about_me/about_me_screen.dart';
import 'package:flutter_boilerplate/presentation/blogs/blogs_screen.dart';
import 'package:flutter_boilerplate/presentation/contact/contact_screen.dart';
import 'package:flutter_boilerplate/presentation/old_projects/old_projects_screen.dart';
import 'package:flutter_boilerplate/presentation/resume/resume_screen.dart';
import 'package:flutter_boilerplate/presentation/widgets/card_wrapper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 6,
      vsync: this,
    );

    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      padding: EdgeInsets.zero,
      content: Column(
        children: [
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: <Widget>[
                const AboutMeScreen(),
                const ResumeScreen(),
                const OldProjectsScreen(),
                const BlogsScreen(),
                const ContactScreen(),
                Container()
              ],
            ),
          ),
          _bottomNavigatorBar(),
        ],
      ),
    );
  }

  Widget _bottomNavigatorBar() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.primary.withValues(alpha: 0.5),
            width: 0.5,
          ),
        ),
      ),
      child: LayoutBuilder(builder: (context, _) {
        bool isSmallerMediumScreen = ResponsiveBreakpoints.of(context)
            .smallerThan(XResponsiveBreakpoint.medium.name);

        return ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(14),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              tabController.animateTo(value);
            },
            currentIndex: tabController.index,
            backgroundColor: AppColors.background,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.secondaryText,
            showUnselectedLabels: !isSmallerMediumScreen,
            showSelectedLabels: !isSmallerMediumScreen,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'About me'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'Resume'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.tab), label: 'Old Projects'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: 'Blogs'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.contact_emergency), label: 'Contact me'),
              if (isSmallerMediumScreen)
                const BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        );
      }),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
