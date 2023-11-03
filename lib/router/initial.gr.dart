// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'initial.dart';

abstract class _$Initial extends RootStackRouter {
  // ignore: unused_element
  _$Initial({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BookingCreateRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookingCreateRouteArgs>(
          orElse: () =>
              BookingCreateRouteArgs(bookingId: pathParams.optInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookingCreateScreen(
          key: args.key,
          bookingId: args.bookingId,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
  };
}

/// generated route for
/// [BookingCreateScreen]
class BookingCreateRoute extends PageRouteInfo<BookingCreateRouteArgs> {
  BookingCreateRoute({
    Key? key,
    int? bookingId,
    List<PageRouteInfo>? children,
  }) : super(
          BookingCreateRoute.name,
          args: BookingCreateRouteArgs(
            key: key,
            bookingId: bookingId,
          ),
          rawPathParams: {'id': bookingId},
          initialChildren: children,
        );

  static const String name = 'BookingCreateRoute';

  static const PageInfo<BookingCreateRouteArgs> page =
      PageInfo<BookingCreateRouteArgs>(name);
}

class BookingCreateRouteArgs {
  const BookingCreateRouteArgs({
    this.key,
    this.bookingId,
  });

  final Key? key;

  final int? bookingId;

  @override
  String toString() {
    return 'BookingCreateRouteArgs{key: $key, bookingId: $bookingId}';
  }
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
