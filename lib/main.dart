import 'package:clean_msib/features/cart/presentation/pages/cart.dart';
import 'package:clean_msib/features/intro/presentation/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import SystemChrome

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Lock the device orientation to portrait mode only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cart(),
    );
  }
}
