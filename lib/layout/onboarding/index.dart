import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:knavm/layout/onboarding/component.dart';
import 'package:knavm/layout/onboarding/controller.dart';
import 'package:knavm/router/initial.dart';
import 'package:knavm/utils/sharedpref.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  final OnboardingController _controller = OnboardingController();

  @override
  void initState() {
    super.initState();
    _controller.timer =
        Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      _controller.currentPage++;

      _controller.pageController.animateToPage(
        _controller.currentPage,
        duration: const Duration(milliseconds: 2),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
          body: Stack(
        children: [
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller.pageController,
            onPageChanged: (index) {
              setState(() {
                index % _controller.pages.length;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingComponent(
                  title: _controller.pages[index % _controller.pages.length]
                      ['title'],
                  description: _controller
                      .pages[index % _controller.pages.length]['description'],
                  image: _controller.pages[index % _controller.pages.length]
                      ['image']);
            },
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 50,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    SharedPref.setBoolean('onboard', true);
                    AutoRouter.of(context).replace(const LoginRoute());
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45.0)),
                  child: const Text(
                    "Mulai Tracking",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
