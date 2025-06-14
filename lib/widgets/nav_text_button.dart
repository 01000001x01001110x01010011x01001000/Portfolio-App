import 'package:flutter/material.dart';

class NavTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const NavTextButton({required this.label, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }
}