import 'package:auto_route/auto_route.dart';
import 'package:knavm/router/initial.dart';
import 'package:knavm/utils/sharedpref.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (SharedPref.getBoolean("onboard") == false) {
      router.removeLast();
      router.replace(const OnboardingRoute());
    } else if (SharedPref.getString("token") != null) {
      router.removeLast();
      router.replace(const DashboardRoute());
    } else {
      resolver.next(true);
    }
  }
}
