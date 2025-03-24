import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/presentation/home/widgets/home_contact_item.dart';
import 'package:flutter_boilerplate/presentation/home/widgets/mobile_other_item.dart';
import 'package:flutter_boilerplate/presentation/home/widgets/other_contact_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/card_wrapper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProfileSidebar extends StatelessWidget {
  const ProfileSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, _) {
        final isSmallerLargeScreen = ResponsiveBreakpoints.of(context)
            .smallerThan(XResponsiveBreakpoint.large.name);
        return CardWrapper(
          width: isSmallerLargeScreen ? 230 : 300,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              _avatarSection(),
              const Divider(
                height: 17,
                thickness: 1,
                color: AppColors.secondaryText,
              ),
              _quickContactSection(),
            ],
          ),
        );
      },
    );
  }

  Widget _mobileView() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          spacing: 16,
          children: [
            MobileOtherItem(),
            MobileOtherItem(),
          ],
        ),
      ],
    );
  }

  Widget _otherContacts() {
    return LayoutBuilder(
      builder: (context, _) {
        if (ResponsiveBreakpoints.of(context)
            .smallerThan(XResponsiveBreakpoint.medium.name)) {
          return _mobileView();
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OtherContactItem(icon: Assets.icons.github),
            OtherContactItem(icon: Assets.icons.linkedIn, isLast: true),
          ],
        );
      },
    );
  }

  Widget _avatarSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _avatar(),
        const SizedBox(height: 12),
        const Text(
          "Trương Thái Ngân",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.secondaryText,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            "Software Developer",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        )
      ],
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 150,
      width: 150,
      child: CircleAvatar(
        backgroundColor: AppColors.secondaryText,
        foregroundImage: AssetImage(Assets.images.avatar.path),
      ),
    );
  }

  Widget _quickContactSection() {
    final List<HomeContact> contacts = [
      HomeContact.email,
      HomeContact.phone,
      HomeContact.location,
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          ...contacts.map(
            (e) => HomeContactItem(
              item: e,
            ),
          ),
          _otherContacts(),
        ],
      ),
    );
  }
}
