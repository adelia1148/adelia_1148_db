import 'package:flutter/material.dart';

import 'package:flutter_app/pages/halaman_beli.dart';
import 'package:flutter_app/pages/halaman_daftar.dart';
import 'package:flutter_app/pages/halaman_daftar_login.dart';
import 'package:flutter_app/pages/halaman_imunisasi.dart';
import 'package:flutter_app/pages/halaman_login.dart';
import 'package:flutter_app/pages/halaman_obat.dart';
import 'package:flutter_app/pages/halaman_profile_pasien.dart';
import 'package:flutter_app/pages/halaman_riwayat_berobat.dart';
import 'package:flutter_app/pages/menu_utama.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(

        body: HalamanBeli(),
        // body: HalamanDaftar(),
        // body: HalamanDaftarLogin(),
        // body: HalamanImunisasi(),
        // body: HalamanLogin(),
        // body: HalamanObat(),
        // body: HalamanProfilePasien(),
        // body: HalamanRiwayatBerobat(),
        // body: MenuUtama(),

      ),
    );
  }
}
