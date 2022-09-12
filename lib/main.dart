import 'package:crypto_wallet/presenter/home_page.dart';
import 'package:crypto_wallet/presenter/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Wallet',
      home: SplashScreen(),
    );
  }
}
