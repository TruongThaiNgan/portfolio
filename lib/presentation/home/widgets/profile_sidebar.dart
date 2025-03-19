import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/presentation/home/widgets/home_contact_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/card_wrapper.dart';

class ProfileSidebar extends StatelessWidget {
  ProfileSidebar({super.key});

  final List<HomeContact> contacts = [
    HomeContact.email,
    HomeContact.phone,
    HomeContact.location,
  ];

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          _avatarSection(),
          const Divider(
            height: 17,
            thickness: 1,
            color: AppColors.secondaryTextColor,
          ),
          _quickContactSection(),
        ],
      ),
    );
  }

  Widget _otherContactItem({bool isLast = false, AssetGenImage? icon}) {
    return Container(
      margin: EdgeInsets.only(right: isLast ? 0 : 8),
      width: 15,
      height: 15,
      child: icon?.image(color: AppColors.secondaryTextColor),
    );
  }

  Widget _otherContacts() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _otherContactItem(icon: Assets.icons.github),
        _otherContactItem(icon: Assets.icons.linkedIn, isLast: true),
      ],
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
            color: AppColors.secondaryTextColor,
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
        backgroundColor: AppColors.secondaryTextColor,
        foregroundImage: AssetImage(Assets.images.avatar.path),
      ),
    );
  }

  Widget _quickContactSection() {
    return Column(
      children: [
        ...contacts.map(
          (e) => HomeContactItem(
            item: e,
          ),
        ),
        _otherContacts(),
      ],
    );
  }
}
