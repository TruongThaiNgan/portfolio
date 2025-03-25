// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        return '+084 ... ... 306';

      case location:
        return 'Bình Tân, Tp HCM';
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
        return "Develop high-performance Android & iOS apps using Flutter and React Native with smooth UI/UX and real-time features.";
      case AbilityAboutMe.web:
        return "Build fast, responsive, and scalable websites using React and Next.js, ensuring great performance and user experience.";
      case AbilityAboutMe.backend:
        return "Create backend services with Node.js, handling APIs, databases.";
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
            description: Text("""
At Golden Owl, I worked as a Software Developer, starting with web development using JavaScript and React, then transitioning to mobile development with Flutter and React Native. Over time, I expanded my expertise to include backend development with Node.js, allowing me to contribute to full-stack solutions.

During my time at Golden Owl, I worked on both company-owned products and outsourced projects, collaborating with cross-functional teams to develop scalable, high-performance applications. I gained valuable experience in Agile development, CI/CD pipelines, and optimizing application performance. This role significantly strengthened my problem-solving skills and adaptability in different development environments.
"""));
      case HistoryEnum.browng:
        return HistoryItem(
          time: "03/2019 - 12/2020",
          title: "BROWNG-TECH GROUP",
          role: "Website Developer",
          icon: Assets.icons.groupIcon.image(),
          description: const Text(
            "BROWNG-TECH GROUP was where I took my first steps into web development. It was a group of four, including three friends from my KMA cohort. Together, we worked on real-world projects, gaining hands-on experience in coding, problem-solving, and project management. This experience laid the foundation for my journey into software development.",
          ),
        );
      case HistoryEnum.kma:
        return HistoryItem(
          time: "2017-2020",
          title: "KMA - Academy of Cryptography Techniques",
          role: "Student",
          icon: Assets.icons.learnIcon.image(),
          description: const Text(
            'I studied at KMA (Academy of Cryptography Techniques, Vietnam), where I built a strong foundation in software development, security, and system architecture. My time at KMA has equipped me with the technical skills and problem-solving mindset to develop scalable and secure applications.',
          ),
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

enum HomeOtherContact {
  github,
  linkedIn;

  OtherContactItem getItem() {
    switch (this) {
      case HomeOtherContact.github:
        return OtherContactItem(
          content: "https://github.com/TruongThaiNgan",
          name: "Git hub",
          image: Assets.icons.github,
        );
      case HomeOtherContact.linkedIn:
        return OtherContactItem(
          content: "https://www.linkedin.com/in/ng%C3%A2n-th%C3%A1i-b0b082175",
          name: "LinkedIn",
          image: Assets.icons.linkedIn,
        );
    }
  }
}

class OtherContactItem {
  final String content;
  final String name;
  final AssetGenImage image;

  OtherContactItem({
    required this.content,
    required this.name,
    required this.image,
  });
}

class OldProject {
  final String name;
  final String role;
  final AssetGenImage logo;
  final String technologies;
  final String? url;
  final String description;

  OldProject({
    required this.name,
    required this.role,
    required this.logo,
    required this.technologies,
    required this.description,
    this.url,
  });
}
