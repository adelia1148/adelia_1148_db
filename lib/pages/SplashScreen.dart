import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo di bagian tengah atas
            Image.asset(
              'assets/images/logobidanku_1.png', // Ganti dengan path logo Anda
              height: 100.0,
            ),
            SizedBox(height: 30),
            // Gambar Ibu dengan anaknya di bagian tengah
            Image.asset(
              'ssets/images/logoku_1.png', // Ganti dengan path gambar Anda
              height: 200.0,
            ),
            SizedBox(height: 30),
            // Teks "Rencanakan Kesehatanmu dari Sekarang!"
            Text(
              'Rencanakan Kesehatanmu dari Sekarang!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            // Teks "Daftar sekarang atau login dengan akun Anda"
            Text(
              'Daftar sekarang atau login dengan akun Anda',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            // Tombol Masuk
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2BC656),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              child: Text(
                'Masuk',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
