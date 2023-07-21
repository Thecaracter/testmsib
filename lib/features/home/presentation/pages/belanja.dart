import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class Belanja extends StatefulWidget {
  const Belanja({Key? key}) : super(key: key);

  @override
  State<Belanja> createState() => _BelanjaState();
}

class _BelanjaState extends State<Belanja> {
  @override
  final bool showNotification = true;
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  final CarouselController _carouselController = CarouselController();
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/sepatu1.png',
      'assets/images/sepatu2.png',
      'assets/images/sepatu3.png',
      'assets/images/sepatu4.png',
      'assets/images/sepatu5.png',
      'assets/images/sepatu5.png',
      'assets/images/sepatu3.png',
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorApp.putih,
        leading: Builder(
          builder: (BuildContext context) {
            return BackButtonCustom(
                onPressed: () {},
                backgroundColor: ColorApp.putih,
                iconColor: ColorApp.page);
          },
        ),
        title: Text(
          'Sneaker Shop',
          style: GoogleFonts.raleway(
            // Modify the style as needed
            fontWeight: AppFont.semibold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
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
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
                onPressed: () {
                  // Aksi ketika tombol belanja ditekan
                },
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Nike Air Max 270 \nEssential",
                style: GoogleFonts.raleway(
                    fontSize: 26, fontWeight: AppFont.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 8),
            child: Text("Men's Shoes",
                style: GoogleFonts.raleway(
                    color: ColorApp.abu,
                    fontSize: 16,
                    fontWeight: AppFont.medium)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Rp 799.000",
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: AppFont.semibold)),
          ),
          Stack(
            children: [
              CarouselSlider(
                carouselController: _carouselController,
                items: imgList
                    .map((e) => Image.asset(
                          e,
                          height: 200,
                          width: 500,
                          fit: BoxFit.contain,
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 350,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width / 16,
                  top: 220,
                  child: Image.asset("assets/images/lingkaran.png")),
              Positioned(
                top: 278,
                left: MediaQuery.of(context).size.width / 2.2,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorApp.darkabu,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            _carouselController.previousPage();
                          },
                          child: const Icon(
                            Icons.chevron_left,
                            size: 24.0,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _carouselController.nextPage();
                          },
                          child: const Icon(
                            Icons.chevron_right,
                            size: 24.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: imgList
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(
                                  right:
                                      16), // Adjust the spacing between containers
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset(
                                e,
                                height: 50,
                                width: 50,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 70),
            child: ReadMoreText(
              'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
              trimLines: 2,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: AppFont.regular),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              bottom: 30,
              right: 20,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: _toggleFavorite,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isFavorite ? ColorApp.putih : ColorApp.abu,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isFavorite ? Colors.red : ColorApp.putih,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : ColorApp.putih,
                      size: 24,
                    ),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width /
                        5.5), // Add spacing between the InkWell and ElevatedButton
                SizedBox(
                  width: MediaQuery.of(context).size.width /
                      1.8, // Set the width of the container as needed
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorApp.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {
                      // Action when button is pressed
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shopping_cart, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
