import 'package:flutter/material.dart';

import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // konten profil menggunakan Expanded
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const SizedBox(height: 16),

                    const ProfileHeader(
                      name: 'Humania Danis Hashemian',
                      nim: '25.11.6440',
                    ),

                    const SizedBox(height: 16),

                    const ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'h.danis@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),

                    const SizedBox(height: 16),

                    const SocialMediaRow(),
                  ],
                ),
              ),
            ),

            // tombol aksi menggunakan Flexible
            Flexible(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ActionButtons(onEdit: () {}, onShare: () {}),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.info_outline),
                      label: const Text('Tentang Aplikasi'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
