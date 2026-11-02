import 'package:flutter/material.dart';
import 'package:pertemuanke5/widgets/profil_stats.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_info.dart';
import 'package:pertemuanke5/widgets/experience_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<String> experiences = const [
    'Senior Backend Engineer - EDC Bank DKI',
    'Backend & System Architect - Secure Payment EDC',
    'Lead Developer - Aplikasi Sekurindo',
    'Backend Engineer - Pengembangan Sistem E-money',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 20,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfileAvatar(),

              const SizedBox(height: 20),

              const ProfileInfo(
                name: 'Rafly Kurniawan Otw S.Kom',
                role: 'Mahasiswa Teknik Informatika',
              ),

              const SizedBox(height: 24),
  
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Fitur Edit Belum Aktif Paa Modul Ini',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),

              const SizedBox(height: 24),

              const ProfileStats(),

             const SizedBox(height: 24),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pengalaman Kerja',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Divider(thickness: 4, color: Colors.teal),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return ExperienceCard(
                    experience: experiences[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}