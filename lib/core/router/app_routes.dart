import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sift_loan/feature/startup/presentation/screens/onboarding.dart';
import 'package:sift_loan/feature/auth/presentation/screens/auth_screen.dart';
import 'package:sift_loan/feature/landing_page/presentation/screens/landing_page_screen.dart';
import 'package:sift_loan/feature/startup/presentation/screens/onboarding_screen_two.dart';



part "../../feature/startup/presentation/_startup_routes.dart";
part "../../feature/auth/presentation/_auth_routes.dart";
part "../../feature/landing_page/presentation/_landing_page_routes.dart";

part 'app_routes.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
);
