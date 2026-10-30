import 'package:flutter/material.dart';
import 'package:pertemuanke5/profil_page.dart';
import 'package:pertemuanke5/skills_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Portofolio',
      debugShowCheckedModeBanner: false,

      


      home: BottomNavigasi(),
    );
  }
}

class BottomNavigasi extends StatefulWidget {
  const BottomNavigasi({super.key});
  @override
  State<BottomNavigasi> createState() => _BottomNavigasiState();

  
}

class _BottomNavigasiState extends State<BottomNavigasi> {
 int _selectedIndex = 0;

 final List<Widget> _daftarHalaman = [
  const ProfilePage(),
  const SkillsCard(),
 ];

 void _ketikaTabDitekan(int index){
  setState(() {
    _selectedIndex = index;
  });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _daftarHalaman[_selectedIndex],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _ketikaTabDitekan,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Skill',
            ),
          ],
        ),
      ),
    );
  }
}