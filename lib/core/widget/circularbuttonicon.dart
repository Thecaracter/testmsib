import 'package:flutter/material.dart';

class CircularButtonIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final double size;
  final bool hasBorder;
  final TextStyle textStyle;

  const CircularButtonIcon({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.size,
    this.hasBorder = false,
    this.textStyle = const TextStyle(color: Colors.white, fontSize: 16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: hasBorder ? Border.all(color: Colors.grey, width: 2.0) : null,
      ),
      child: Icon(
        icon,
        color: textStyle.color,
        size: size * 0.6,
      ),
    );
  }
}
