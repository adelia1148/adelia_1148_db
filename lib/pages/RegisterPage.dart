import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo di bagian atas
            Center(
              child: Image.asset(
                'assets/images/logobidanku_1.png', // Ganti dengan path logo Anda
                height: 100.0,
              ),
            ),
            SizedBox(height: 30),
            // Judul
            Center(
              child: Text(
                'Ayo daftar dulu!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            // Form input Nama
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama',
                fillColor: Color(0xFFD9D9D9),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Form input No. HP
            TextField(
              decoration: InputDecoration(
                labelText: 'No. HP',
                fillColor: Color(0xFFD9D9D9),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Form input Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                fillColor: Color(0xFFD9D9D9),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 40),
            // Tombol Daftar
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2BC656),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Teks Login
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke halaman login
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Sudah punya akun? Klik Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
