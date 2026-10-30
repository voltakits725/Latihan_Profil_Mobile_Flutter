
import 'package:flutter/material.dart';
import 'package:pertemuanke5/profil_stats.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:40),
        child: Center(
        
          child: Column(
            
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //SizedBox(height: 40,),
              const ProfileAvatar(),

              const SizedBox(height: 20),

              const ProfileInfo(
                name: 'Rafly Kurniawan',
                role: 'Mahasiswa Teknik Informatika',
              ),

              const SizedBox(height: 24),

              // Tombol Edit Profil
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Fitur edit belum aktif pada modul statis.',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),

              const SizedBox(height: 24),

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
              
            ],
          ),
        ),
      ),
      
    );
  }
}
