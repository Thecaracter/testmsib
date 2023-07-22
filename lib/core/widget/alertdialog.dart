import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      title: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue, // Ganti dengan warna yang Anda inginkan
            ),
            padding: const EdgeInsets.all(
                10), // Sesuaikan ukuran lingkaran di belakang ikon
            child: const Icon(
              Icons.mark_email_read,
              color: Colors.white, // Ganti dengan warna ikon yang Anda inginkan
              size: 30, // Sesuaikan ukuran ikon
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Check your email',
              style:
                  GoogleFonts.raleway(fontWeight: AppFont.bold, fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              'We have send password recovery code in your email',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontWeight: AppFont.regular, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
