import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String nickname;
  final String title;

  const ProfileCard({super.key, required this.name, this.nickname = '', this.title = ''});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 36,
              backgroundColor: Theme.of(context).primaryColor,
              child: Text(name.isNotEmpty ? name[0] : '?', style: const TextStyle(color: Colors.white, fontSize: 28)),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.titleLarge),
                  if (nickname.isNotEmpty) Text('($nickname)', style: const TextStyle(color: Colors.grey)),
                  if (title.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Text(title, style: Theme.of(context).textTheme.bodyMedium),
                  ]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
