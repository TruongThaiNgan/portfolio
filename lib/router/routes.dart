import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_boilerplate/presentation/home/home_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  observers: [BotToastNavigatorObserver()],
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
