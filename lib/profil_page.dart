
import 'package:flutter/material.dart';
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

              // Statistik profil
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '15',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('Proyek'),
                      ],
                    ),

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '1.2K',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('Followers'),
                      ],
                    ),

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '42',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('Following'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
