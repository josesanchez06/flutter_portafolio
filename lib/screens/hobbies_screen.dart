import 'package:flutter/material.dart';
import 'package:flutter_portafolio/widgets/footer.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hobbies')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('Hobbies', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('- Practicar deportes\n- Ajedrez\n- Aprender nuevas tecnologías\n- Música'),
          SizedBox(height: 24),
          Footer(),
        ],
      ),
    );
  }
}
