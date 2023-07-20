import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final FontWeight fontWeight; // Tambahkan argumen untuk fontWeight

  CustomButton({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    this.fontWeight = FontWeight.normal, // Nilai default untuk fontWeight
  });

  @override
  Widget build(BuildContext context) {
    final double buttonWidth =
        MediaQuery.of(context).size.width * 0.8; // Setengah dari lebar layar

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(buttonWidth, 50), // Atur ukuran minimal tombol
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13), // Atur radius sudut tombol
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: fontWeight, // Gunakan fontWeight yang diberikan
        ),
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color iconColor;

  const RoundedIconButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
