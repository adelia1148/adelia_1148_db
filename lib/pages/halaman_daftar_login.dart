import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanDaftarLogin extends StatelessWidget {
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
        padding: EdgeInsets.fromLTRB(29, 50, 29, 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 63),
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
              margin: EdgeInsets.fromLTRB(1, 0, 0, 19.5),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/logoku_1.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 205,
                  height: 258,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 21, 26.5),
              child: Text(
                'Rencanakan Kesehatanmu Dari sekarang',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 33,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
              child: Text(
                'Daftar Sekarang atau Login Dengan Akun Anda',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2BC656),
                borderRadius: BorderRadius.circular(45),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 14.5, 0, 14.5),
                child: Text(
                  'MASUK',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                    color: Color(0xFFFFECEC),
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