import 'package:clean_msib/core/constants/color.dart';
import 'package:flutter/material.dart';

class OTPTextField extends StatefulWidget {
  @override
  _OTPTextFieldState createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());
  List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 4; i++) {
      _controllers[i].addListener(_onTextChanged);
    }
  }

  void _onTextChanged() {
    for (int i = 0; i < 4; i++) {
      if (_controllers[i].text.isNotEmpty) {
        // Jika ada teks di kotak saat tombol ditekan, fokus beralih ke kotak berikutnya (jika ada)
        if (i < 3) {
          _focusNodes[i + 1].requestFocus();
        } else {
          // Jika Anda berada di kotak terakhir (kotak ke-3), fokus tetap pada kotak tersebut
          _focusNodes[i].unfocus();
        }
        break; // Keluar dari loop setelah menemukan kotak yang berisi teks baru
      } else if (_controllers[i].text.isEmpty && i > 0) {
        // Jika teks dihapus dan bukan di kotak pertama (kotak ke-0), fokus beralih ke kotak sebelumnya
        _focusNodes[i - 1].requestFocus();
        break; // Keluar dari loop setelah menemukan kotak yang berisi teks yang akan dihapus
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Container(
          width: 45,
          height: 55,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: ColorApp.abu2,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextField(
            focusNode: _focusNodes[index],
            controller: _controllers[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            style: const TextStyle(fontSize: 24),
            decoration: InputDecoration(
              counterText: "",
              border: OutlineInputBorder(
                borderSide: BorderSide.none, // Hapus border
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        );
      }),
    );
  }
}
