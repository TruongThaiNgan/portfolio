import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/presentation/about_me/about_me_screen.dart';
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
            Expanded(
                child: TabBarView(
              children: <Widget>[
                AboutMeScreen(),
                const Center(child: const Text("It's rainy here")),
                const Center(child: Text("It's sunny here")),
                const Center(child: Text("It's cloudy here")),
                const Center(child: Text("It's rainy here")),
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
      labelColor: AppColors.primaryColor,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      unselectedLabelColor: AppColors.textColor,
      indicatorColor: AppColors.primaryColor,
    );
  }
}
