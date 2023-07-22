import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPasswordWidget extends StatefulWidget {
  final String hintText;
  final String labelText;

  const InputPasswordWidget(
      {super.key, required this.hintText, required this.labelText});

  @override
  // ignore: library_private_types_in_public_api
  _InputPasswordWidgetState createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText,
            style: GoogleFonts.raleway(
              fontSize: 16.0,
              fontWeight: AppFont.medium,
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: ColorApp.abu2,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.left,
                    obscureText:
                        _obscureText, // Gunakan obscureText untuk menyembunyikan password
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20.0),
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText; // Toggle hide/show password
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
