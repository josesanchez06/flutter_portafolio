import 'package:flutter/material.dart';
import 'package:flutter_portafolio/widgets/footer.dart';

class SignatureScreen extends StatelessWidget {
  const SignatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Firma / Contacto')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Firma', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('Jose Angel Sanchez'),
            const SizedBox(height: 12),
            const Text('Estuidante de Ingenieria de Sistemas'),
            const SizedBox(height: 24),
            const Text('Contacto', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('Correo: jsanchez.3440@unimar.edu.ve'),
            const SizedBox(height: 8),
            const Text('Teléfono: +58-416031003'),
            const Spacer(),
            const Footer(text: 'Contacto alternativo en el pie de página'),
          ],
        ),
      ),
    );
  }
}
