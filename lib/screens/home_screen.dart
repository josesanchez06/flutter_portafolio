import 'package:flutter/material.dart';
import 'package:flutter_portafolio/routes/app_routes.dart';
import 'package:flutter_portafolio/widgets/footer.dart';
import 'package:flutter_portafolio/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('portafolio'),
        actions: [
          IconButton(
            tooltip: 'Firma / Contacto',
            icon: const Icon(Icons.edit),
            onPressed: () => Navigator.pushNamed(context, AppRoutes.signature),
          )
        ],
      ),
      body: ListView(
        children: [
          const ProfileCard(name: 'Jose Angel', title: 'Estudiante de Ingenieria de Sistemas'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Sobre mí', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('Soy estudiante/desarrollador con interés en aplicaciones móviles con Flutter.'),
                const SizedBox(height: 16),

                const Text('¿Qué hago?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('Estudio ingenieria en sistemas desde hace 2 años, actualmente estoy aprendiendo sobre el desarollo de aplicaciones moviles utilizano flutter.'),
                const SizedBox(height: 16),

                const Text('Hobbies', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('Me gutsa mucho escuchar musica y jugar ajedrez.'),
                const SizedBox(height: 16),

                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, AppRoutes.about),
                      child: const Text('Más sobre mí'),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton(
                      onPressed: () => Navigator.pushNamed(context, AppRoutes.comments),
                      child: const Text('Sección de comentarios'),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton(
                      onPressed: () => Navigator.pushNamed(context, AppRoutes.hobbies),
                      child: const Text('Hobbies (detalle)'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Divider(),
          const Footer(),
        ],
      ),
    );
  }
}
