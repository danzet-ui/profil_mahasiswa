import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void tampilkanSnackBar(BuildContext context, String nama) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(nama)));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            tampilkanSnackBar(context, 'Instagram');
          },
          icon: const Icon(Icons.camera_alt),
          tooltip: 'Instagram',
        ),
        IconButton(
          onPressed: () {
            tampilkanSnackBar(context, 'LinkedIn');
          },
          icon: const Icon(Icons.work),
          tooltip: 'LinkedIn',
        ),
        IconButton(
          onPressed: () {
            tampilkanSnackBar(context, 'GitHub');
          },
          icon: const Icon(Icons.code),
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}
