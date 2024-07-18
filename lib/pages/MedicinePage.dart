import 'package:flutter/material.dart';

class MedicinePage extends StatelessWidget {
  final List<Map<String, String>> medicineData = [
    {
      'name': 'Paracetamol',
      'price': 'Rp 10.000',
      'image': 'assets/images/pamol_1.png', // Path gambar obat
    },
    {
      'name': 'Amoxicillin',
      'price': 'Rp 15.000',
      'image': 'assets/images/amoxicillin_1.png', // Path gambar obat
    },
    {
      'name': 'Vitamin C',
      'price': 'Rp 20.000',
      'image': 'assets/images/ventolin_1.png', // Path gambar obat
    },
    {
      'name': 'Ibuprofen',
      'price': 'Rp 12.000',
      'image': 'assets/images/metformin_1.png', // Path gambar obat
    },
    {
      'name': 'Antibiotic',
      'price': 'Rp 25.000',
      'image': 'assets/images/mefinal_1.png', // Path gambar obat
    },
    {
      'name': 'Antihistamine',
      'price': 'Rp 18.000',
      'image': 'assets/images/promag_1.png', // Path gambar obat
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
                  Image.asset(
                    'assets/images/berobat.png', // Path gambar
                    height: 50.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Obat',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Pilih berbagai jenis obat yang tersedia',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: medicineData.length,
                itemBuilder: (context, index) {
                  return MedicineCard(
                    name: medicineData[index]['name']!,
                    price: medicineData[index]['price']!,
                    image: medicineData[index]['image']!,
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
            _buildBottomNavBarItem(context, Icons.home, 'Beranda', false),
            _buildBottomNavBarItem(
                context, Icons.shopping_cart, 'Belanjaan', false),
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

class MedicineCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  MedicineCard({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Color(0xFF41A190),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 50.0,
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
