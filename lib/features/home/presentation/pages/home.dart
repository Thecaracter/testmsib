import 'package:clean_msib/core/constants/color.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorApp.putih,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/icon/Hamburger.png',
                  width: 24, height: 24),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/explore.png', width: 200, height: 200),
            Text(''), // Text dihapus karena diganti dengan gambar
          ],
        ),
        centerTitle: true, // Mengatur judul ke tengah
        actions: [
          // Icon belanja dengan lingkaran dan shadow
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Mengubah posisi bayangan
                ),
              ],
            ),
            child: Material(
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.shopping_cart, color: ColorApp.page),
                onPressed: () {
                  // Aksi ketika tombol belanja ditekan
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorApp.abu,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari produk',
                        hintStyle: TextStyle(
                          color: ColorApp.page,
                        ),
                        prefixIcon: Icon(Icons.search, color: ColorApp.page),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Mengubah posisi bayangan
                      ),
                    ],
                  ),
                  child: Material(
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    color: ColorApp.primary,
                    child: IconButton(
                      icon: Icon(Icons.list, color: ColorApp.putih),
                      onPressed: () {
                        // Aksi ketika tombol filter ditekan
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
