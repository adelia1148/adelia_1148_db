import 'package:flutter/material.dart';
import 'ImmunizationPage.dart'; // Import halaman Imunisasi
import 'MedicinePage.dart'; // Import halaman Obat
import 'HistoryPage.dart'; // Import halaman Riwayat Berobat
import 'ProfilePage.dart'; // Import halaman Profil

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Menghilangkan tombol back
        title: Image.asset(
          'assets/images/logobidanku_1.png', // Path logo
          height: 50.0,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Selamat Datang di Menu Utama!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hallo, Pasien',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/profile_2.png', // Path icon profil
                      height: 50.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pilih menu yang Anda inginkan:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  _buildMenuCard(context, 'Imunisasi',
                      'assets/images/suntikan_1.png', ImmunizationPage()),
                  _buildMenuCard(context, 'Obat', 'assets/images/obat_1.png',
                      MedicinePage()),
                  _buildMenuCard(context, 'Riwayat Berobat',
                      'assets/images/riwayat_berobat_1.png', HistoryPage()),
                  _buildMenuCard(context, 'Data Pasien',
                      'assets/images/data_pasien.png', ProfilePage()),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context,
                    '/mainmenu'); // Navigasi ke '/mainmenu' saat icon home diklik
              },
              child:
                  _buildBottomNavBarItem(context, Icons.home, 'Beranda', true),
            ),
            GestureDetector(
              onTap: () {
                // Tidak melakukan navigasi saat icon cart diklik (menuju '#')
              },
              child: _buildBottomNavBarItem(
                  context, Icons.shopping_cart, 'Belanjaan', false),
            ),
          ],
        ),
        color: Color(0xFF2BC656),
      ),
    );
  }

  Widget _buildMenuCard(
      BuildContext context, String title, String imagePath, Widget targetPage) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Color(0xFF2BC656),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetPage),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(16.0),
                child: Image.asset(
                  imagePath, // Path gambar menu
                  height: 50.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavBarItem(
      BuildContext context, IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive ? Colors.white : Colors.black,
        ),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
