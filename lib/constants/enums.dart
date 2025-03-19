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
