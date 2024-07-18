import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<Map<String, String>> medicalHistoryData = [
    {
      'date': '01 September 2023',
      'diagnosis': 'Gastritis',
      'complaint': 'Sakit perut, mual',
      'payment': 'Rp 200.000',
    },
    {
      'date': '15 Agustus 2023',
      'diagnosis': 'Migraine',
      'complaint': 'Sakit kepala parah',
      'payment': 'Rp 150.000',
    },
    {
      'date': '10 Juli 2023',
      'diagnosis': 'Dengue Fever',
      'complaint': 'Demam tinggi, nyeri sendi',
      'payment': 'Rp 500.000',
    },
  ];

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
            Center(
              child: Text(
                'Riwayat Berobat',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 70,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hallo, Adel',
                    style: TextStyle(
                      fontSize: 14.0,
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
            SizedBox(height: 50),
            Expanded(
              child: ListView.builder(
                itemCount: medicalHistoryData.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 16.0),
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF41A190),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 30),
                            Text(
                              'Diagnosa: ${medicalHistoryData[index]['diagnosis']}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Keluhan: ${medicalHistoryData[index]['complaint']}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Pembayaran: ${medicalHistoryData[index]['payment']}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF0D8BD1),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            'Riwayat Berobat ${medicalHistoryData[index]['date']}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
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
