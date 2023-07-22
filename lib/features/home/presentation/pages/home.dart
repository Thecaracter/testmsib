import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/features/cart/presentation/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHome extends StatefulWidget {
  final VoidCallback ontap;
  const MainHome({super.key, required this.ontap});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int selectedButtonIndex =
      0; // Index tombol terpilih, awalnya 0 (tombol pertama)
  final bool showNotification = true;
  final List<String> categories = [
    "All Shoes",
    "Outdoor",
    "Tennis",
  ];
  List<bool> isFavoriteList = [false, false];

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
                widget.ontap();
              },
            );
          },
        ),
        title: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/explore.png', width: 200, height: 200),
            const Text(''),
          ],
        ),
        centerTitle: true, // Mengatur judul ke tengah
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Material(
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              child: IconButton(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Icon(Icons.shopping_bag, color: ColorApp.page),
                    if (showNotification)
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Cart(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorApp.abu2,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const TextField(
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
                const SizedBox(width: 10),
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
                        offset: const Offset(0, 3), // Mengubah posisi bayangan
                      ),
                    ],
                  ),
                  child: Material(
                    shape: const CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    color: ColorApp.primary,
                    child: IconButton(
                      icon: const Icon(Icons.list, color: ColorApp.putih),
                      onPressed: () {
                        // Aksi ketika tombol filter ditekan
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Select Category",
              style: GoogleFonts.raleway(
                fontWeight: AppFont.semibold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedButtonIndex;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedButtonIndex = index;
                        });
                      },
                      child: Container(
                        width: 120,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: isSelected ? ColorApp.primary : ColorApp.putih,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Popular Shoes", // Corrected the spelling to "Recovery Password"
                      textAlign: TextAlign.left,
                      style: GoogleFonts.raleway(
                        fontSize: 16.0,
                        fontWeight: AppFont.medium,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "see all", // Corrected the spelling to "Recovery Password"
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: AppFont.medium,
                        color: ColorApp.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2, // Ubah jumlah item sesuai kebutuhan
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        width: 150,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorApp.putih,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Warna dan opacity bayangan
                              spreadRadius: 2, // Jarak penyebaran bayangan
                              blurRadius: 5, // Jarak blur bayangan
                              offset:
                                  const Offset(0, 3), // Posisi bayangan (x, y)
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isFavoriteList[index] = !isFavoriteList[index];
                            });
                          },
                          icon: Icon(
                            isFavoriteList[index]
                                ? Icons.favorite
                                : Icons.favorite_border,
                            size: 20.0,
                            color: isFavoriteList[index] ? Colors.red : null,
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorApp.putih,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  // Handle onTap here
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10)),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isFavoriteList[index] =
                                        !isFavoriteList[index];
                                  });
                                },
                                icon: Icon(
                                  isFavoriteList[index]
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  size: 20.0,
                                  color:
                                      isFavoriteList[index] ? Colors.red : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 27, left: 25),
                        child: Image.asset(
                          "assets/images/sepatu1.png",
                          width: 130.0,
                          height: 130.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Set to start here
                          children: [
                            Text(
                              "Best Seller",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.raleway(
                                color: ColorApp.primary,
                                fontSize: 14.0,
                                fontWeight: AppFont.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Nike Jordan",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.raleway(
                                color: ColorApp.darkabu,
                                fontSize: 16.0,
                                fontWeight: AppFont.semibold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Rp 302.000",
                              style: GoogleFonts.raleway(
                                color: ColorApp.primary,
                                fontSize: 14.0,
                                fontWeight: AppFont.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "New Arrivals", // Corrected the spelling to "Recovery Password"
                      textAlign: TextAlign.left,
                      style: GoogleFonts.raleway(
                        fontSize: 16.0,
                        fontWeight: AppFont.medium,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "see all", // Corrected the spelling to "Recovery Password"
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: AppFont.medium,
                        color: ColorApp.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/newarival.png",
                width: MediaQuery.of(context).size.width,
                height: 120.0,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [ColorApp.primary, ColorApp.primary.withOpacity(0.2)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        body: MainHome(
          ontap: _handleMenuButtonPressed,
        ),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 128.0,
                height: 128.0,
                margin: const EdgeInsets.only(
                  top: 24.0,
                  bottom: 64.0,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/profileslider.png',
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('Profile'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.shopping_bag),
                title: const Text('My Chart'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.favorite),
                title: const Text('Favourite'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.fire_truck),
                title: const Text('Orders'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.notifications),
                title: const Text('Notifications'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
              ),
              const Divider(
                thickness: 3,
                color: ColorApp.putih,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.logout),
                title: const Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
