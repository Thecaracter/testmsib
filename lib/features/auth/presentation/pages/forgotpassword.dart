import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/alertdialog.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/core/widget/inputwidget.dart';
import 'package:clean_msib/features/auth/presentation/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/widget/backbutton.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: BackButtonCustom(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  ); // Aksi yang akan dijalankan ketika tombol ditekan
                },
                backgroundColor: ColorApp
                    .abu, // Ganti dengan warna latar belakang yang diinginkan
                iconColor:
                    ColorApp.page, // Ganti dengan warna ikon yang diinginkan
              ),
            ),
            Center(
              child: Text(
                "Forgot Password",
                style: GoogleFonts.raleway(
                    fontSize: 32.0, fontWeight: AppFont.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Enter Your Email Account To Reset \nYour Password",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: AppFont.regular,
                  color: const Color(0xff707B81)),
            )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InputWidget(hintText: "XXXXXX", labelText: ""),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                text: "Reset Password",
                fontWeight: AppFont.semibold,
                backgroundColor: ColorApp.primary,
                textColor: Colors.white,
                onPressed: () {
                  // Call the showDialog function with the CustomAlertDialog as the builder
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomAlertDialog();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
