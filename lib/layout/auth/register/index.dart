import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:knavm/components/formfield.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25, bottom: 50),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage("assets/image/ic_logo.png"),
                          fit: BoxFit.fill,
                          width: 35,
                          height: 35,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kipos navigation".toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 23)),
                            Text("mobile".toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700))
                          ],
                        )
                      ],
                    ),
                  ),
                  const Text("Daftar Akun Baru",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 30)),
                  const SizedBox(height: 25),
                  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 30),
                  const Text("Hubungi Kami",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 20)),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SvgPicture.asset(
                          "assets/image/ic_email.svg",
                          semanticsLabel: 'Acme Logo',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 20),
                      const Text("knav@krakatauinternationalport.com", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/image/ic_phone.svg",
                        semanticsLabel: 'Acme Logo',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 20),
                      const Text("0944378345388", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )
                ],
              ),
            ),
          ),
          ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(height: 47, child: ButtonLoading(rounded: 0, onPressed: (){
                AutoRouter.of(context).pop();
              }, buttonText: "Masuk Aplikasi", isLoading: false,)))
        ]
      ),
    );
  }
}
