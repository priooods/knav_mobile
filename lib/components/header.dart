import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String title;
  final String description;
  final bool useNavigation;
  final VoidCallback? navigation;
  final String? navigationTitle;
  const HeaderComponent(
      {super.key,
      required this.title,
      required this.description,
      required this.useNavigation,
      this.navigationTitle,
      this.navigation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 3),
              Text(
                description,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          if (useNavigation)
            MaterialButton(
              onPressed: navigation,
              color: Colors.lightBlue.shade100,
              textColor: Colors.blue.shade700,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                navigationTitle ?? "Lihat Semua",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
        ],
      ),
    );
  }
}
