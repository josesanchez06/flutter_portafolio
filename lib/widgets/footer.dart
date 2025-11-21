import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String text;

  const Footer({super.key, this.text = '© 2025 - Mi Portafolio'}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      color: Colors.transparent,
      child: Text(text, style: const TextStyle(color: Colors.grey)),
    );
  }
}
