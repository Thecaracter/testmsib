import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: RoundedIconButton(
              onPressed: () {
                Navigator.pop(
                    context); // Aksi yang akan dijalankan ketika tombol ditekan
              },
              backgroundColor: ColorApp
                  .abu, // Ganti dengan warna latar belakang yang diinginkan
              iconColor:
                  ColorApp.page, // Ganti dengan warna ikon yang diinginkan
            ),
          ),
          Text(
            "text",
            style: TextStyle(
              fontSize: 19.0,
            ),
          ),
        ],
      ),
    );
  }
}
