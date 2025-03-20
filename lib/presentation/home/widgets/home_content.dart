import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/presentation/about_me/about_me_screen.dart';
import 'package:flutter_boilerplate/presentation/blogs/blogs_screen.dart';
import 'package:flutter_boilerplate/presentation/contact/contact_screen.dart';
import 'package:flutter_boilerplate/presentation/old_projects/old_projects_screen.dart';
import 'package:flutter_boilerplate/presentation/resume/resume_screen.dart';
import 'package:flutter_boilerplate/presentation/widgets/card_wrapper.dart';

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
      length: 5,
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
              children: const <Widget>[
                AboutMeScreen(),
                ResumeScreen(),
                OldProjectsScreen(),
                BlogsScreen(),
                ContactScreen(),
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
            color: AppColors.primary.withValues(alpha: 0.2),
            width: 0.5,
          ),
        ),
      ),
      child: ClipRRect(
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
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'About me'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Resume'),
            BottomNavigationBarItem(
                icon: Icon(Icons.tab), label: 'Old Projects'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Blogs'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_emergency), label: 'Contact me'),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
