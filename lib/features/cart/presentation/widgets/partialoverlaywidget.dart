import 'package:clean_msib/core/constants/color.dart';
import 'package:flutter/material.dart';

class PartialOverlayWidget extends StatelessWidget {
  final Widget child;
  final double overlayHeight;

  const PartialOverlayWidget(
      {super.key, required this.child, this.overlayHeight = 100.0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: overlayHeight,
        decoration: BoxDecoration(
          color: ColorApp.putih, // Set the overlay color to white
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0.2,
              blurRadius: 5,
              offset: const Offset(
                  0, -3), // Adjust the Y-offset to create a shadow on top
            ),
          ],
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
