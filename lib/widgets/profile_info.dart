
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String programStudi;
  final String email;
  final String lokasi;

  const ProfileInfo({
    super.key,
    required this.programStudi,
    required this.email,
    required this.lokasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const Icon(Icons.school),
          title: Text(programStudi),
        ),
        ListTile(
          leading: const Icon(Icons.email),
          title: Text(email),
        ),
        ListTile(
          leading: const Icon(Icons.location_on),
          title: Text(lokasi),
        ),
      ],
    );
  }
}
