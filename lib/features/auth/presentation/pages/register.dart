import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/core/widget/customiconbutton.dart';
import 'package:clean_msib/core/widget/inputpasswordwidget.dart';
import 'package:clean_msib/core/widget/inputwidget.dart';
import 'package:clean_msib/features/auth/presentation/pages/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                "Register Account",
                style: GoogleFonts.raleway(
                    fontSize: 32.0, fontWeight: AppFont.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Fill your details or continue with \nsocial media",
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
              child: InputWidget(hintText: "Masukan Nama", labelText: "Nama"),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InputWidget(
                hintText: "loremipsum@gmail.com",
                labelText: "Email Address",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InputPasswordWidget(
                hintText: "Password",
                labelText: "Password",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                text: "Sign Up",
                fontWeight: AppFont.semibold,
                backgroundColor: ColorApp.primary,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: CustomIconButton(
                text: "Sign Up With Google",
                fontWeight: AppFont.semibold,
                backgroundColor: ColorApp.abu2,
                textColor: Colors.black,
                onPressed: () {},
                iconImage: AssetImage('assets/icon/googleicon.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Already Have Account? ",
                        style: GoogleFonts.raleway(
                          fontSize: 16.0,
                          fontWeight: AppFont.medium,
                          color: ColorApp.darkabu,
                        ),
                        children: [
                          TextSpan(
                            text: "Log In",
                            style: GoogleFonts.raleway(
                              fontSize: 16.0,
                              fontWeight: AppFont.medium,
                              color: Colors.black,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Register(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
