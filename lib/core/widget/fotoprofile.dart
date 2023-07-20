import 'package:clean_msib/core/constants/color.dart';
import 'package:flutter/material.dart';

class EditableProfilePhoto extends StatelessWidget {
  final String? photoAsset;
  final double photoSize;
  final bool iconData; // Ubah menjadi bool
  final VoidCallback onEditPressed;

  const EditableProfilePhoto({
    this.photoAsset,
    required this.photoSize,
    this.iconData = true, // Berikan nilai default true
    required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipOval(
          child: photoAsset != null
              ? Image.asset(
                  photoAsset!,
                  width: photoSize,
                  height: photoSize,
                  fit: BoxFit.cover,
                )
              : Container(
                  width: photoSize,
                  height: photoSize,
                  color: Colors.grey,
                ),
        ),
        if (iconData) // Tampilkan ikon edit jika iconData bernilai true
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: onEditPressed,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorApp.primary,
                ),
                child: const Icon(
                  Icons.edit,
                  size: 20,
                  color: ColorApp.putih,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
