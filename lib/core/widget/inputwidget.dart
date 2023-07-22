import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final String labelText;

  const InputWidget(
      {super.key, required this.hintText, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: GoogleFonts.raleway(
              fontSize: 16.0,
              fontWeight: AppFont.medium,
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: ColorApp.abu2),
            child: Align(
              alignment: Alignment
                  .centerRight, // Untuk mengatur perataan teks di kanan
              child: TextField(
                textAlign: TextAlign.left, // Perataan teks dalam TextField
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  alignLabelWithHint: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
