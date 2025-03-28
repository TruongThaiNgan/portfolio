import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/old_projects/widgets/project_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/coming_soon_screen.dart';

class OldProjectsScreen extends StatelessWidget {
  const OldProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OldProject> items = [
      OldProject(
        name: "GigAdmin",
        role: "Front-End Developer",
        technologies: "React, React-Native",
        description:
            "In the this project, I worked as a Frontend Developer, building the web application with React and the mobile app with React Native. Initially, the project used Redux-Saga for state management and API handling, but we later migrated to React Query for improved performance and better API data synchronization.",
        logo: Assets.images.gigLogo,
        url: 'https://www.gigtogig.co.uk/',
      ),
      OldProject(
        name: "Morning Bird",
        role: "Mobile Developer",
        technologies: "Flutter",
        description:
            "I worked as a Frontend Developer, where I initiated the project, set up the configuration, and built key functionalities using Flutter to develop both mobile and web applications. I also leveraged Firebase services to handle the backend, ensuring a seamless integration between the frontend and backend systems.",
        logo: Assets.images.morningBird,
        url: 'https://apps.apple.com/vn/app/morning-bird/id1602368173',
      ),
      OldProject(
        name: "Clinger",
        role: "FullStack Developer",
        technologies: "NestJs, Flutter",
        description:
            "I worked as a Full-Stack Developer, leveraging Flutter for the frontend, NestJS for the backend, and PostgreSQL for the database. I implemented Cubit for state management and integrated Mapbox for mapping functionalities. My responsibilities included building new features, fixing bugs, refactoring code, and optimizing the app for a smoother performance.",
        logo: Assets.images.clinger,
        url: "https://apps.apple.com/vn/app/clinger/id1632592593",
      ),
      OldProject(
        name: "Wile",
        role: "Mobile Developer",
        technologies: "Flutter",
        description:
            "I worked as a Frontend Developer. I initiated the project, handled the configuration, and built key functionalities using Flutter for both mobile and web platforms. I leveraged Firebase as the backend service. Initially, I implemented chat features using GetStream, but later rebuilt the chat functionalities to integrate them with Firebase. I also utilized Cubit for state management.",
        logo: Assets.images.wile,
        url: "https://wile.chat/",
      ),
      OldProject(
        name: "Marshmallow",
        role: "Mobile Developer",
        technologies: "Flutter",
        description:
            "I worked as a Frontend Developer on a freelance basis through Upwork. I was responsible for developing new features, and the project utilized Riverpod for efficient state management.",
        logo: Assets.images.notFound,
      ),
      OldProject(
        name: "RealLaunch",
        role: "Mobile Developer",
        technologies: "Flutter",
        description:
            "I worked as a Frontend Developer using Flutter and Cubit for state management. Since the backend uses GraphQL, I integrated graphQL_flutter for querying data, and I utilized Mapbox for mapping functionalities. In this project, I maintained and developed the app, continuously building new features and ensuring smooth performance.",
        logo: Assets.images.realLaunch,
        url: 'https://tech-rea.com/realLaunch',
      ),
      OldProject(
        name: "RealAgent",
        role: "Mobile Developer",
        technologies: "Flutter",
        description:
            "I worked as a Frontend Developer using Flutter and Cubit for state management. Since the backend uses GraphQL, I integrated graphQL_flutter for querying data, and I utilized Mapbox for mapping functionalities. In this project, I maintained and developed the app, continuously building new features and ensuring smooth performance.",
        logo: Assets.images.realAgent,
        url: "https://tech-rea.com/realAgent",
      ),
      OldProject(
        name: "Aitis",
        role: "Mobile Developer",
        technologies: "React Native",
        description:
            "I worked as a Frontend Developer using React Native. I focused on building new features and updating the UI, and I utilized Redux-Saga for state management and handling API calls.",
        logo: Assets.images.mymonx,
        url: "https://apps.apple.com/gb/app/mymonx-smart-ring/id6741517627",
      ),
      OldProject(
        name: "BiiB",
        role: "Mobile Developer",
        technologies: "React Native",
        description:
            "I worked as a Frontend Developer using React Native and Redux-Saga to manage state and handle API calls. I replaced Google Fit with Health Connect to read step count data on Android devices, while integrating Apple Health on iOS devices and HUAWEI Health on Huawei devices.",
        // "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        logo: Assets.images.biib,
        url: 'https://getbiib.com/',
      ),
    ];
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My old projects",
            style: AppStyles.titleLarge,
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(
              top: 16,
            ),
            child: _listOldProject(items),
          )),
        ],
      ),
    );
  }

  Widget _listOldProject(List<OldProject> items) {
    if (items.isEmpty) {
      return const Center(child: ComingSoonScreen());
    }

    return ListView.separated(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => ProjectItem(item: items[index]),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      },
    );
  }
}
