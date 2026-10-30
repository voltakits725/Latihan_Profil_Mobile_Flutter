
import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  // Data bahasa pemrograman
  final List<Map<String, String>> daftarbahasa = const [
    {'nama': 'Dart', 'gambar': 'assets/images/dart.png'},
    {'nama': 'Python', 'gambar': 'assets/images/python.png'},
    {'nama': 'Java', 'gambar': 'assets/images/java.png'},
    {'nama': 'C Sharp (C#)', 'gambar': 'assets/images/csharp.png'},
    {'nama': 'PHP', 'gambar': 'assets/images/php.png'},
    {'nama': 'JavaScript', 'gambar': 'assets/images/js.png'},
  ];

  // Data framework
  final List<Map<String, String>> daftarframework = const [
    {'nama': 'Flutter', 'gambar': 'assets/images/flutter.png'},
    {'nama': 'Laravel', 'gambar': 'assets/images/laravel.png'},
    {'nama': 'Tailwind', 'gambar': 'assets/images/tailwind.png'},
    {'nama': 'Express.js', 'gambar': 'assets/images/express.png'},
    {'nama': 'Flask', 'gambar': 'assets/images/flask.png'},
    {'nama': 'ASP.NET', 'gambar': 'assets/images/asp.png'},
  ];

  // Data database
  final List<Map<String, String>> daftardatabase = const [
    {'nama': 'MySQL', 'gambar': 'assets/images/mysql.png'},
    {'nama': 'PostgreSQL', 'gambar': 'assets/images/postgresql.png'},
    {'nama': 'MongoDB', 'gambar': 'assets/images/mongodb.png'},
    {'nama': 'SQLite', 'gambar': 'assets/images/sqlite.png'},
    {'nama': 'Redis', 'gambar': 'assets/images/redis.png'},
    {'nama': 'Supabase', 'gambar': 'assets/images/supabase.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Skills'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.amber,
            indicatorWeight: 4,
            tabs: [
              Tab(
                icon: Icon(Icons.code),
                text: 'Bahasa',
              ),
              Tab(
                icon: Icon(Icons.layers),
                text: 'Framework',
              ),
              Tab(
                icon: Icon(Icons.storage),
                text: 'Database',
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            // Tab Bahasa
            _buildGrid(daftarbahasa),

            // Tab Framework
            _buildGrid(daftarframework),

            // Tab Database
            _buildGrid(daftardatabase),
          ],
        ),
      ),
    );
  }

  // Widget untuk menampilkan Grid Card
  Widget _buildGrid(List<Map<String, String>> daftar) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: daftar.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      daftar[index]['gambar']!,
                      fit: BoxFit.contain,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.image_not_supported,
                          size: 50,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4,
                    right: 4,
                    bottom: 10,
                  ),
                  child: Text(
                    daftar[index]['nama']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
