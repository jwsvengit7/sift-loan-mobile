part of '../../../core/router/app_routes.dart';

@TypedGoRoute<StartUpRoute>(
  path: '/',
  routes: [
    TypedGoRoute<OnboardingScreenTwoRoute>(
      path: "signup"
    )
  ]
)
@immutable
class StartUpRoute extends GoRouteData {
  const StartUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreen();
      }
}
class OnboardingScreenTwoRoute extends GoRouteData {
  const OnboardingScreenTwoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreenTwo();
      }
}