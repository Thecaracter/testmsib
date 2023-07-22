import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String> options;
  final String selectedOption;
  final ValueChanged<String> onChanged;
  final double width;
  final bool hasBorder;
  final TextStyle textStyle;

  const CustomDropdownButton({
    Key? key,
    required this.options,
    required this.selectedOption,
    required this.onChanged,
    this.width = 200.0,
    this.hasBorder = true,
    this.textStyle = const TextStyle(fontSize: 16),
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: widget.selectedOption,
      onSelected: widget.onChanged,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      itemBuilder: (BuildContext context) {
        return widget.options.map((String option) {
          return PopupMenuItem<String>(
            value: option,
            child: Text(option, style: widget.textStyle),
          );
        }).toList();
      },
      child: Container(
        width: widget.width,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: widget.hasBorder ? Border.all(color: Colors.grey) : null,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                widget.selectedOption,
                style: widget.textStyle.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
