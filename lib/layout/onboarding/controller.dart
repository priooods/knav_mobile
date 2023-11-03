import 'dart:async';

import 'package:flutter/material.dart';

class OnboardingController {
  OnboardingController();

  int currentPage = 0;
  late Timer timer;
  final PageController pageController = PageController();
  final List<Map<String, dynamic>> pages = [
    {
      'title': "Lorem Ipsum Doller Amet 1",
      'description':
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      'image': 'assets/image/shep1.jpg'
    },
    {
      'title': "Lorem Ipsum Doller Amet 2",
      'description':
          "Commodo elit at imperdiet dui accumsan. A condimentum vitae sapien pellentesque habitant morbi tristique senectus",
      'image': 'assets/image/shep2.jpg'
    },
  ];
}
