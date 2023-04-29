import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_ui/presentation/home/home_page.dart';
import 'package:instagram_ui/presentation/login/login_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Intagram UI',
      getPages: [
        GetPage(name: '/', page: () => const LoginPage()),
        GetPage(name: '/home', page: () => const HomePage())
      ],
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/',
    );
  }
}
