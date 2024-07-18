import 'package:flutter/material.dart';

class ImmunizationPage extends StatelessWidget {
  final List<Map<String, String>> immunizationData = [
    {
      'title': 'BCG',
      'description':
          '(Bacillus Calmette-Guérin): Melindungi terhadap tuberkulosis.',
    },
    {
      'title': 'POLIO',
      'description': 'Melindungi terhadap polio (poliomyelitis).',
    },
    {
      'title': 'MMR',
      'description':
          '(Measles, Mumps, Rubella): Melindungi terhadap campak, gondongan (mumps), dan rubella.',
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
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Imunisasi',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Pilih berbagai layanan imunisasi',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/imun_1.png', // Path gambar
                    height: 50.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: immunizationData.length,
                itemBuilder: (context, index) {
                  return ImmunizationCard(
                    title: immunizationData[index]['title']!,
                    description: immunizationData[index]['description']!,
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

class ImmunizationCard extends StatefulWidget {
  final String title;
  final String description;

  ImmunizationCard({required this.title, required this.description});

  @override
  _ImmunizationCardState createState() => _ImmunizationCardState();
}

class _ImmunizationCardState extends State<ImmunizationCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Color(0xFF41A190),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        trailing: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(8.0),
            child: Icon(
              isSelected ? Icons.check : null,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
