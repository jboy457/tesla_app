import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tesla_app/modules/main/main_screen.dart';
import 'package:tesla_app/modules/welcome/welcome_screen.dart';

import 'config/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: 'Tesla App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const WelcomeScreen(),
          routes: {MainScreen.routeName: (ctx) => const MainScreen()},
        );
      });
    });
  }
}
