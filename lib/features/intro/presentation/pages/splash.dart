import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/features/intro/presentation/pages/boarding1.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoarding1(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: ColorApp.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png', // Ubah sesuai dengan nama dan lokasi file logo Anda
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            const SizedBox(height: 16.0),
            // Anda juga bisa menambahkan teks atau indikator loading di sini
          ],
        ),
      ),
    );
  }
}
