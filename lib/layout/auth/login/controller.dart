import 'package:flutter/material.dart';
import 'package:knavm/model/select/model_select.dart';

class LoginController {
  LoginController();

  final formKey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController bup = TextEditingController();
  final FocusNode nodeUsername = FocusNode();
  final FocusNode nodePassword = FocusNode();
  final FocusNode nodeBup = FocusNode();

  bool showPassword = false;
  bool isLoadingLogin = false;

  List<ModelSelect> bupList = [
    const ModelSelect(title: "BUP 1", description: "Kalau ada desc 1", id: 1),
    const ModelSelect(title: "BUP 2", description: "Kalau ada desc 2", id: 2),
    const ModelSelect(title: "BUP 3", description: "Kalau ada desc 3", id: 3),
  ];
}
