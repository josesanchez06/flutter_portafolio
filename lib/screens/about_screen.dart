import 'package:flutter/material.dart';
import 'package:flutter_portafolio/widgets/footer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre mí')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('Sobre mí', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Soy estuidante de la universidad de margarita de la carrera de ingenieria en sistemas, originario de Venezuela'),
          SizedBox(height: 16),
          Text('¿Quién soy?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Estudiante/Desarrollador con intereses en aprender nuevos lenguajes de programación y desarrollo móvil.'),
          SizedBox(height: 24),
          Footer(),
        ],
      ),
    );
  }
}
