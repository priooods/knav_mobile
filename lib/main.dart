import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:knavm/router/initial.dart';
import 'package:knavm/utils/sharedpref.dart';
import 'package:knavm/utils/themes.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await SharedPref().init();
  SharedPref.clearing();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Initial initalRoute = Initial();
    return ChangeNotifierProvider(
      create: (context) => Themes(),
      child: Consumer<Themes>(
        builder: (context, theme, child) {
          return MaterialApp.router(
            title: dotenv.env['APP_NAME'] ?? "",
            routerConfig: initalRoute.config(),
            theme: theme.isDark
                ? theme.darkTheme(context)
                : theme.lightTheme(context),
          );
        },
      ),
    );
  }
}
