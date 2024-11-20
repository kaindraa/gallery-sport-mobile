import 'package:flutter/material.dart';
import 'package:gallery_sport/screens/login.dart';
import 'package:gallery_sport/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Gallery Sport',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(
            primary: const Color.fromARGB(255, 39, 73, 209),
            secondary: const Color.fromARGB(255, 224, 22, 22),
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
