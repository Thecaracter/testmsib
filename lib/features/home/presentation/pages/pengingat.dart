import 'package:flutter/material.dart';

class Pengingat extends StatefulWidget {
  const Pengingat({super.key});

  @override
  State<Pengingat> createState() => _PengingatState();
}

class _PengingatState extends State<Pengingat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengingat"),
      ),
    );
  }
}
