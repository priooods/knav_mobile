import 'package:flutter/material.dart';

class OnboardingComponent extends StatelessWidget {
  final String title, description, image;
  const OnboardingComponent(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.50,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.40,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [
                            0,
                            0,
                            0.3,
                            0.95
                          ],
                          colors: [
                            Colors.black,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black
                          ])),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.60,
                  decoration: const BoxDecoration(
                    color: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 50),
                        Text(title,
                            style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 26,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                              fontSize: 18.0, height: 1.5, color: Colors.grey),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
