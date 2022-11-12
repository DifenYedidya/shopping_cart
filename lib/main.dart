import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart2/presentation/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      routes: {
        // LandingPage.routeName: (ctx) => LandingPage(),
        LoginPage.routeName: (ctx) => const LoginPage(),
      },
      initialRoute: LoginPage.routeName,
    );
  }
}
