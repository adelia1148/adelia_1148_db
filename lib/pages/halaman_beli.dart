import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanBeli extends StatelessWidget {
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
              margin: EdgeInsets.fromLTRB(0, 0, 0, 91),
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
              margin: EdgeInsets.fromLTRB(33, 0, 34, 37),
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
              margin: EdgeInsets.fromLTRB(36, 0, 34, 47),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF41A190),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                  Positioned(
                    right: 8,
                    top: 9,
                    child: SizedBox(
                      width: 17,
                      height: 19,
                      child: SvgPicture.asset(
                        'assets/vectors/ellipse_4_x2.svg',
                      ),
                    ),
                  ),
            Container(
                      padding: EdgeInsets.fromLTRB(15, 8, 7, 7),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD9D9D9),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Container(
                                          width: 41,
                                          height: 37,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'assets/images/promag_1.jpeg',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              width: 41,
                                              height: 37,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 4.5, 0, 5.5),
                                      child: Text(
                                        'PROMAG
                                    Rp 11.000',
                                        style: GoogleFonts.getFont(
                                          'Public Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 14.5, 0, 14.5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 4.5, 0, 2.5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF000000),
                                          ),
                                          child: Container(
                                            width: 5,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1',
                                        style: GoogleFonts.getFont(
                                          'Public Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 7,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 4.5, 0, 2.5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF000000),
                                          ),
                                          child: Container(
                                            width: 5,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF000000),
                              ),
                              child: Container(
                                width: 1,
                                height: 5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(36, 0, 34, 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF41A190),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SizedBox(
                  height: 202,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(14.1, 10, 20.2, 0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Barang Yang Dibeli :',
                                    style: GoogleFonts.getFont(
                                      'Public Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 7,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.1, 0, 0.1, 7),
                                child: Text(
                                  'PROMAG',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.1, 0, 0.1, 12),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Jumlah Barang Dibeli :',
                                    style: GoogleFonts.getFont(
                                      'Public Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 7,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(13.8, 0, 13.8, 3),
                                child: Text(
                                  '1',
                                  style: GoogleFonts.getFont(
                                    'Public Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.2, 0, 0, 14),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 4, 3),
                                      child: SizedBox(
                                        width: 220.9,
                                        child: Text(
                                          'Harga Barang :',
                                          style: GoogleFonts.getFont(
                                            'Public Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 7,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                      child: Text(
                                        'Rp 11.000',
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
                                margin: EdgeInsets.fromLTRB(0.3, 0, 0, 38),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                      child: SizedBox(
                                        width: 220.8,
                                        child: Text(
                                          'Total Harga :',
                                          style: GoogleFonts.getFont(
                                            'Public Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 7,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Rp 11.000',
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
                                margin: EdgeInsets.fromLTRB(12.8, 0, 12.8, 0),
                                child: Text(
                                  '1',
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
                        Positioned(
                          left: -0.1,
                          right: -4.2,
                          bottom: 48,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              width: 260,
                              height: 13,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10, 2, 12, 3),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                            child: SizedBox(
                                              width: 229,
                                              child: Text(
                                                'Alamat : Perumahan Korpri, Blok 2, No.Rumah 47',
                                                style: GoogleFonts.getFont(
                                                  'Public Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 7,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFF000000),
                                              ),
                                              child: Container(
                                                width: 5,
                                                height: 1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      right: 2,
                                      bottom: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF000000),
                                        ),
                                        child: Container(
                                          width: 1,
                                          height: 5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2, 0, 0, 15),
              child: Text(
                'Pilih Fitur Pembayaran',
                style: GoogleFonts.getFont(
                  'Public Sans',
                  fontWeight: FontWeight.w400,
                  fontSize: 7,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(36, 0, 34, 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2BC656),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Container(
                      width: 116,
                      padding: EdgeInsets.fromLTRB(0, 10.5, 0, 16.5),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Cash : 
                      ',
                          style: GoogleFonts.getFont(
                            'Public Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 7,
                            color: Color(0xFFFFFFFF),
                          ),
                          children: [
                            TextSpan(
                              text: 'Rp 11.000',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
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
                      color: Color(0xFF0D8BD1),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Container(
                      width: 116,
                      padding: EdgeInsets.fromLTRB(0, 13.5, 0, 13.5),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Via Dana : 
                      ',
                          style: GoogleFonts.getFont(
                            'Public Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 7,
                            color: Color(0xFFFFFFFF),
                          ),
                          children: [
                            TextSpan(
                              text: 'Rp 11.000',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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