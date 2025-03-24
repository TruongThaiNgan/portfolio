import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';

enum HomeContact {
  email,
  phone,
  location;

  String getContent() {
    switch (this) {
      case email:
        return 'truongthaingan19@gmail.com';

      case phone:
        return '+084 394 737 306';

      case location:
        return 'Tân Bình, Tp HCM';
    }
  }

  IconData getIcon() {
    switch (this) {
      case email:
        return Icons.email_outlined;

      case phone:
        return Icons.phone;

      case location:
        return Icons.location_on_outlined;
    }
  }
}

enum AbilityAboutMe {
  mobile,
  web,
  backend;

  AssetGenImage getIcon() {
    switch (this) {
      case AbilityAboutMe.mobile:
        return Assets.icons.mobileIcon;
      case AbilityAboutMe.web:
        return Assets.icons.webIcon;
      case AbilityAboutMe.backend:
        return Assets.icons.dbServerIcon;
    }
  }

  String getTitle() {
    switch (this) {
      case AbilityAboutMe.mobile:
        return "Mobile Apps";
      case AbilityAboutMe.web:
        return "Web development";
      case AbilityAboutMe.backend:
        return "Backend Development";
    }
  }

  String getContent() {
    switch (this) {
      case AbilityAboutMe.mobile:
        return "Professional development of applications for Android and ios.for Android and ios";
      case AbilityAboutMe.web:
        return "High-quality development of sites at the professional level.";
      case AbilityAboutMe.backend:
        return "High-performance backend services designed for scalability and seamless user experience.";
    }
  }
}

enum HistoryEnum {
  goldenOwl,
  browng,
  kma;

  HistoryItem getItem() {
    switch (this) {
      case HistoryEnum.goldenOwl:
        return HistoryItem(
          time: "12/2020 - 03/2025",
          title: "Golden Owl",
          role: "Software Developer",
          icon: Assets.icons.companyIcon.image(),
        );
      case HistoryEnum.browng:
        return HistoryItem(
          time: "03/2019 - 12/2020",
          title: "BROWNG-TECH GROUP",
          role: "Website Developer",
          icon: Assets.icons.groupIcon.image(),
        );
      case HistoryEnum.kma:
        return HistoryItem(
          time: "2017-2020",
          title: "KMA",
          role: "Student",
          icon: Assets.icons.learnIcon.image(),
        );
    }
  }
}

enum XResponsiveBreakpoint {
  xSmall,
  small,
  medium,
  large,
  extraLarge,
  extraExtraLarge;

  static XResponsiveBreakpoint getBreakpoint(double width) {
    if (width < 576) {
      return XResponsiveBreakpoint.xSmall;
    } else if (width < 768) {
      return XResponsiveBreakpoint.small;
    } else if (width < 992) {
      return XResponsiveBreakpoint.medium;
    } else if (width < 1200) {
      return XResponsiveBreakpoint.large;
    } else if (width < 1400) {
      return XResponsiveBreakpoint.extraLarge;
    } else {
      return XResponsiveBreakpoint.extraExtraLarge;
    }
  }

  double getMinWidth() {
    switch (this) {
      case xSmall:
        return 0;
      case small:
        return 576;
      case medium:
        return 768;
      case large:
        return 992;
      case extraLarge:
        return 1200;
      case extraExtraLarge:
        return 1400;
    }
  }
}

class HistoryItem {
  final String time;
  final String title;
  final String role;
  final Image icon;
  final Widget? description;

  HistoryItem({
    required this.time,
    required this.title,
    required this.role,
    required this.icon,
    this.description,
  });
}
