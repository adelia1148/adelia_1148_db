import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanRiwayatBerobat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 42, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF000000),
                  ),
                  child: Container(
                    width: 23,
                    height: 3,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 43),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/logobidanku_1.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 164,
                  height: 55,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 100.5, 21),
              child: Text(
                'Riwayat Berobat',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(33, 0, 34, 58),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.9, 8, 23, 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7.5, 6, 7.5),
                        child: SizedBox(
                          width: 210.1,
                          child: RichText(
                            text: TextSpan(
                              text: 'Hallo, ',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: Color(0xFF000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'pengguna 1',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 8,
                                    height: 1.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 35,
                          height: 27,
                          padding: EdgeInsets.fromLTRB(9, 0, 8, 2),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/profile_2.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 18,
                              height: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(35, 0, 35, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF41A190),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 22.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF0D8BD1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(7.3, 7, 7.3, 7),
                            child: Text(
                              'RIWAYAT BEROBAT 01 SEPTEMBER 2023',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 4, 0),
                              child: SizedBox(
                                width: 212.3,
                                child: Text(
                                  'DIAGNOSA              ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                              child: Text(
                                'Infeksi',
                                style: GoogleFonts.getFont(
                                  'Public Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 7,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: SizedBox(
                                width: 205.5,
                                child: Text(
                                  'KELUHAN                ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Mengigil',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: SizedBox(
                                width: 217.8,
                                child: Text(
                                  'PEMBAYARAN       ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'BPJS',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(35, 0, 35, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF41A190),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 22.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF0D8BD1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(6.5, 7, 6.5, 7),
                            child: Text(
                              'RIWAYAT BEROBAT 03 SEPTEMBER 2023',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 4, 0),
                              child: SizedBox(
                                width: 213.4,
                                child: Text(
                                  'DIAGNOSA              ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                              child: Text(
                                'Colitis',
                                style: GoogleFonts.getFont(
                                  'Public Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 7,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: SizedBox(
                                width: 216.9,
                                child: Text(
                                  'KELUHAN                ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Diare',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: SizedBox(
                                width: 217.8,
                                child: Text(
                                  'PEMBAYARAN       ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'BPJS',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(35, 0, 35, 115),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF41A190),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 22.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF0D8BD1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(9.2, 7, 9.2, 7),
                            child: Text(
                              'RIWAYAT BEROBAT 01 DESEMBER 2023',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 4, 0),
                              child: SizedBox(
                                width: 194.9,
                                child: Text(
                                  'DIAGNOSA              ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                              child: Text(
                                'Peradangan',
                                style: GoogleFonts.getFont(
                                  'Public Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 7,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: SizedBox(
                                width: 189.8,
                                child: Text(
                                  'KELUHAN                ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Panas Dimgin',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(29, 0, 23, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: SizedBox(
                                width: 211.8,
                                child: Text(
                                  'PEMBAYARAN       ',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'UMUM',
                              style: GoogleFonts.getFont(
                                'Public Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2BC656),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 16, 0.9, 7.5),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: 175.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/home_1.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 37,
                                  height: 39,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: SizedBox(
                              width: 171.1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 5.5, 0),
                                    child: SizedBox(
                                      width: 130.3,
                                      child: Text(
                                        'Beranda',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 7,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Belanjaan',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 7,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 87,
                      top: 14,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/cart_1.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 47,
                          height: 47,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/cart_11.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 47,
                              height: 47,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}