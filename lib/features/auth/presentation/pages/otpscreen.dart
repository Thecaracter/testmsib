import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/features/auth/presentation/pages/forgotpassword.dart';
import 'package:clean_msib/features/auth/presentation/widgets/otpinput.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                      builder: (context) => const ForgotPassword(),
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
                "OTP Verification",
                style: GoogleFonts.raleway(
                    fontSize: 32.0, fontWeight: AppFont.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Please Check Your Email To See The \nVerification Code",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: AppFont.regular,
                  color: const Color(0xff707B81)),
            )),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
              child: Text(
                "OTP Code",
                style: GoogleFonts.raleway(
                  fontSize: 21.0,
                  fontWeight: AppFont.semibold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            OTPTextField(),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: CustomButton(
                text: "Verify",
                backgroundColor: ColorApp.primary,
                textColor: ColorApp.putih,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Resend code to", // Corrected the spelling to "Recovery Password"
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: AppFont.regular,
                        color: ColorApp.darkabu,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "00:30", // Corrected the spelling to "Recovery Password"
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: AppFont.regular,
                        color: ColorApp.darkabu,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
