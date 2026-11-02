import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String namaProject;
  final String deskripsi;
  final String teknologi;
  final String gambar;

  const ProjectCard({
    super.key,
    required this.namaProject, 
    required this.deskripsi, 
    required this.teknologi, 
    required this.gambar
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8,
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
                  gambar,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, StackTrace){
                    return const Center(
                      child: Icon(Icons.broken_image, size: 40, color: Colors.grey),
                    );
                  },
                ),
              )
            ),
            const SizedBox(height: 10),
            Text(
              namaProject,
              style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
                ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Text(
              deskripsi,
              style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
                ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Text(
              teknologi,
              style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.teal
                ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ) ,
      ),
    );
  }
}