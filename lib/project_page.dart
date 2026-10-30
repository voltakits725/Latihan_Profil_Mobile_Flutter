import 'package:flutter/material.dart';

class ProjectGua extends StatelessWidget {
  final List<Map<String, String>> daftarproject = const [
    {
      'namaProject': 'Taraka Cafe Management System',
      'deskripsi': 'Aplikasi manajemen kafe untuk mengelola menu dan pesanan.',
      'teknologi': 'Laravel, MySQL, Tailwind CSS',
      'gambar': 'assets/images/taraka.png',
    },
    {
      'namaProject': 'VoltaKits',
      'deskripsi': 'Sistem penjualan jersey bola dan pengelolaan stok.',
      'teknologi': 'CodeIgniter, MySQL, Bootstrap',
      'gambar': 'assets/images/voltakits.png',
    },
    {
      'namaProject': 'MBTI Test Kepribadian Desktop',
      'deskripsi': 'Aplikasi desktop untuk mengidentifikasi tipe kepribadian MBTI.',
      'teknologi': 'Java, SQLite',
      'gambar': 'assets/images/mbti.png',
    },
  ];
  const ProjectGua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kumpulan Project Gua'),
      backgroundColor: Colors.lightBlue,
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: daftarproject.length,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final project = daftarproject[index];

            return Card(
              color: Colors.white,
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          project['gambar']!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Icon(
                                Icons.broken_image,
                                size: 40,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      project['namaProject']!,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 8),

                    Text(
                      project['deskripsi']!,
                      style: const TextStyle(fontSize: 12),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 8),

                    Text(
                      project['teknologi']!,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.blueAccent,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                   
                    
                  ],
                ),
              ),
            );
          },
        ),
      )  ,
    );
  }
}