import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:knavm/layout/auth/login/index.dart';
import 'package:knavm/layout/auth/register/index.dart';
import 'package:knavm/layout/dashboard/booking/create/index.dart';
import 'package:knavm/layout/dashboard/index/index.dart';
import 'package:knavm/layout/onboarding/index.dart';
import 'package:knavm/router/guard.dart';
part 'initial.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class Initial extends _$Initial {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, path: "/onboarding"),
    AutoRoute(page: LoginRoute.page, path: "/login", initial: true,  guards: [AuthGuard()]),
    AutoRoute(page: RegisterRoute.page, path: "/register"),
    AutoRoute(page: DashboardRoute.page, path: "/dashboard"),
    AutoRoute(page: BookingCreateRoute.page, path: "/booking/create/:id")
  ];
}
