import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            SizedBox(height: 20),
            Text(
              'Profil Data Pasien',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0xFFC3B9B9),
                child: CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage(
                      'assets/images/profile_1.png'), // Path gambar profil
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildProfileInfo(context, 'User ID', 'Ubah User ID'),
            SizedBox(height: 10),
            _buildProfileInfo(context, 'No. HP', 'Ubah No. HP'),
            SizedBox(height: 10),
            _buildProfileInfo(context, 'Password', 'Ubah Password'),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk logout
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2BC656), // Warna tombol
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
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
            _buildBottomNavBarItem(context, Icons.home, 'Beranda', false),
            _buildBottomNavBarItem(
                context, Icons.shopping_cart, 'Belanjaan', false),
          ],
        ),
        color: Color(0xFF2BC656),
      ),
    );
  }

  Widget _buildProfileInfo(
      BuildContext context, String title, String buttonText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Logika untuk ubah data
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF2BC656), // Warna tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
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
