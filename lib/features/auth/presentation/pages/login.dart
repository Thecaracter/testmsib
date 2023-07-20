import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/core/widget/customiconbutton.dart';
import 'package:clean_msib/core/widget/inputpasswordwidget.dart';
import 'package:clean_msib/core/widget/inputwidget.dart';
import 'package:clean_msib/features/intro/presentation/pages/boarding1.dart';
import 'package:clean_msib/features/intro/presentation/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Import the gesture recognizer
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      builder: (context) => const OnBoarding1(),
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
                "Hello Again!",
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
            SizedBox(
              height: 20,
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
            Container(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "Recovery Password", // Corrected the spelling to "Recovery Password"

                  style: GoogleFonts.poppins(
                      fontSize: 12.0,
                      fontWeight: AppFont.regular,
                      color: ColorApp.darkabu), // Change the color as desired
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                text: "Sign In",
                fontWeight: AppFont.semibold,
                backgroundColor: ColorApp.primary,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CustomIconButton(
                text: "Sign In With Google",
                fontWeight: AppFont.semibold,
                backgroundColor: ColorApp.abu2,
                textColor: Colors.black,
                onPressed: () {},
                iconImage: AssetImage('assets/icon/googleicon.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, bottom: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "New User? ",
                        style: GoogleFonts.raleway(
                          fontSize: 16.0,
                          fontWeight: AppFont.medium,
                          color: ColorApp.darkabu,
                        ),
                        children: [
                          TextSpan(
                            text: "Create Account",
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
                                    builder: (context) => Splash(),
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
