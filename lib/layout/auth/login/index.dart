import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:knavm/components/formfield.dart';
import 'package:knavm/layout/auth/login/controller.dart';
import 'package:knavm/router/initial.dart';
import 'package:knavm/utils/sharedpref.dart';
import 'package:knavm/utils/themes.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _controller = LoginController();
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(body: Consumer<Themes>(
      builder: (context, tema, child) {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                      key: _controller.formKey,
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
                          const Text("Masuk",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 30)),
                          const Text("Masukan informasi akun anda",
                              style: TextStyle(fontSize: 18)),
                          const SizedBox(height: 35),
                          InputField(
                              inputControl: _controller.username,
                              focusNode: _controller.nodeUsername,
                              theme: tema,
                              inputFor: "Username"),
                          const SizedBox(height: 15),
                          InputField(
                              inputControl: _controller.password,
                              focusNode: _controller.nodePassword,
                              theme: tema,
                              isPassword: true,
                              showPassword: _controller.showPassword,
                              onVisiblePassword: () {
                                setState(() {
                                  _controller.showPassword =
                                      !_controller.showPassword;
                                });
                              },
                              inputFor: "Password"),
                          const SizedBox(height: 15),
                          InputFieldDropdown(
                              focusNode: _controller.nodeBup,
                              theme: tema,
                              item: _controller.bupList,
                              inputFor: "BUP",
                              editingController: _controller.bup),
                          const SizedBox(height: 35),
                          SizedBox(
                            width: double.infinity,
                            height: 47,
                            child: ButtonLoading(
                                rounded: 10.0,
                                onPressed: () {
                                  if (_controller.formKey.currentState!
                                      .validate()) {
                                    setState(() {
                                      _controller.isLoadingLogin = true;
                                    });
                                  }
                                  SharedPref.setString("token", "example_token");
                                  Toast.show("Your Login Failure not supported",
                                      duration: Toast.lengthLong,
                                      backgroundColor: Colors.red,
                                      gravity: Toast.bottom);
                                  AutoRouter.of(context)
                                      .replace(const DashboardRoute());
                                },
                                buttonText: "Masuk",
                                buttonTextLoading: "Mencari akun ...",
                                isLoading: _controller.isLoadingLogin),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Belum punya akun untuk masuk ? "),
                              InkWell(
                                onTap: () {
                                  AutoRouter.of(context)
                                      .push(const RegisterRoute());
                                },
                                child: const Text("Hubungi Kami",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blue)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // const Positioned(
            //     bottom: 10,
            //     left: 50,
            //     right: 50,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Text(
            //             '© PT. Krakatau Bandar Samudera 2023. All rights reserved.')
            //       ],
            //     ))
          ],
        );
      },
    ));
  }
}
