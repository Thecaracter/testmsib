import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final FontWeight fontWeight;
  final IconData? iconData;
  final ImageProvider?
      iconImage; // Add the ImageProvider argument for the icon image

  const CustomIconButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    this.fontWeight = FontWeight.normal,
    this.iconData,
    this.iconImage, // Set the ImageProvider as optional
  });

  @override
  Widget build(BuildContext context) {
    final double buttonWidth = MediaQuery.of(context).size.width * 0.9;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(buttonWidth, 50),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              size: 20,
            ),
          if (iconImage != null) // Use Image widget if iconImage is provided
            Image(
              image: iconImage!,
              width: 20,
              height: 20,
            ),
          const SizedBox(width: 15),
          Text(
            text,
            style: GoogleFonts.raleway(
              color: textColor,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
