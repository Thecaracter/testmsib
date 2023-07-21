import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:clean_msib/core/widget/fotoprofile.dart';
import 'package:clean_msib/core/widget/inputwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_text_field/phone_text_field.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
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
                    backgroundColor: ColorApp.abu,
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
                photoSize: 80.0,
                iconData: false,
                onEditPressed: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Lorem Ipsum",
                  style: GoogleFonts.raleway(
                      fontSize: 16.0, fontWeight: AppFont.semibold)),
            ),
            Center(
              child: GestureDetector(
                child: Text("Change Profile",
                    style: GoogleFonts.raleway(
                        color: ColorApp.primary,
                        fontSize: 12.0,
                        fontWeight: AppFont.semibold)),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InputWidget(hintText: "Lorem", labelText: "First Name"),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InputWidget(hintText: "Lorem", labelText: "Last Name"),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InputWidget(
                  hintText: "Sidoarjo, indonesia", labelText: "Location"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: PhoneTextField(
                  locale: const Locale('en'),
                  decoration: const InputDecoration(
                    filled: true,
                    contentPadding: EdgeInsets.zero,
                    labelText: "Phone number",
                    border: InputBorder.none, // Menghilangkan garis bawah
                    labelStyle: TextStyle(), // Menengahkan label text
                  ),
                  searchFieldInputDecoration: const InputDecoration(
                    filled: false,
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search country",
                  ),
                  initialCountryCode: "IDN",
                  onChanged: (phone) {
                    debugPrint(phone.completeNumber);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
