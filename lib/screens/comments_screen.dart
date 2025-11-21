import 'package:flutter/material.dart';
import 'package:flutter_portafolio/models/comment_model.dart';
import 'package:flutter_portafolio/widgets/footer.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final comments = [
      CommentModel(author: 'Ana', content: 'Excelente trabajo!'),
      CommentModel(author: 'Luis', content: 'Interesante portafolio.'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Comentarios')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: comments.length + 1,
        itemBuilder: (context, index) {
          if (index == comments.length) return const SizedBox(height: 24);
          final c = comments[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(c.author),
              subtitle: Text(c.content),
            ),
          );
        },
      ),
      bottomNavigationBar: const SizedBox(height: 60, child: Footer()),
    );
  }
}
