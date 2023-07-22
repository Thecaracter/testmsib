import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/core/widget/fotoprofile.dart';
import 'package:clean_msib/core/widget/inputpasswordwidget.dart';
import 'package:clean_msib/core/widget/inputwidget.dart';
import 'package:clean_msib/features/auth/presentation/pages/forgotpassword.dart';
import 'package:clean_msib/features/profile/presentation/pages/profile_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/fontweight.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonCustom(
                    onPressed: () {},
                    backgroundColor: ColorApp.abu2,
                    iconColor: ColorApp.page,
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.raleway(
                      fontSize: 20.0,
                      fontWeight: AppFont.semibold,
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: EditableProfilePhoto(
                photoAsset: "assets/images/profile.png",
                photoSize: 70.0,
                iconData: true,
                onEditPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileDetail(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child:
                  InputWidget(hintText: "Masukan Nama", labelText: "Your Name"),
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword(),
                      ),
                    );
                  },
                  child: Text(
                    "Recovery Password", // Corrected the spelling to "Recovery Password"

                    style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: AppFont.regular,
                        color: ColorApp.darkabu), // Change the color as desired
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                text: "Save Now",
                fontWeight: AppFont.semibold,
                backgroundColor: ColorApp.primary,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
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
