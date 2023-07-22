import 'package:carbon_icons/carbon_icons.dart';
import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:clean_msib/core/widget/circularbuttonicon.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/core/widget/cutomdropdown.dart';
import 'package:clean_msib/features/cart/presentation/widgets/dashdivider.dart';
import 'package:clean_msib/features/cart/presentation/widgets/partialoverlaywidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartDetail extends StatefulWidget {
  const CartDetail({super.key});

  @override
  State<CartDetail> createState() => _CartDetailState();
}

class _CartDetailState extends State<CartDetail> {
  String selectedPaymentMethod = 'Transfer Bank';

  List<Map<String, dynamic>> paymentMethods = [
    {
      'method': 'Transfer Bank',
      'image': 'assets/images/mandiri.png',
    },
    {
      'method': 'Lorem ipsum',
      'image': 'assets/images/mandiri.png',
    },
    {
      'method': 'lorem ipsum',
      'image': 'assets/images/mandiri.png',
    },
    {
      'method': 'lorem ipsum',
      'image': 'assets/images/mandiri.png',
    },
    // Tambahkan metode pembayaran lain jika diperlukan
  ];
  final List<String> dropdownOptions = [
    'Rungkut, Kota Surabaya, Jawa Timur',
    'Option 2',
    'Option 3',
    // Add more options as needed
  ];
  String selectedOption = 'Rungkut, Kota Surabaya, Jawa Timur';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.putih,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BackButtonCustom(
            onPressed: () {
              Navigator.pop(context);
            },
            backgroundColor: ColorApp.abu2,
            iconColor: ColorApp.page,
          ),
        ),
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontSize: 20,
            fontWeight: AppFont.bold,
            color: ColorApp.page,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Positioned(
                top: 30,
                left: 0,
                right: 0,
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Container(
                    height: MediaQuery.of(context)
                        .size
                        .height, // Set the height you desire for the container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact Information",
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: AppFont.medium,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              CircularButtonIcon(
                                size: 30,
                                icon: Icons.email,
                                backgroundColor: ColorApp.abu,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "loremipsum@gmail.com",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: AppFont.medium,
                                    ),
                                  ),
                                  Text(
                                    "Email",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: AppFont.medium,
                                      color: ColorApp.abu,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  CarbonIcons.edit,
                                  color: ColorApp.abu,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              CircularButtonIcon(
                                size: 30,
                                icon: Icons.phone,
                                backgroundColor: ColorApp.abu,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "+62821-39-488-953",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: AppFont.medium,
                                    ),
                                  ),
                                  Text(
                                    "Phone",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: AppFont.medium,
                                      color: ColorApp.abu,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  CarbonIcons.edit,
                                  color: ColorApp.abu,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Address",
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: AppFont.medium,
                            ),
                          ),
                          CustomDropdownButton(
                            options: dropdownOptions,
                            selectedOption:
                                'Rungkut, Kota Surabaya, Jawa Timur',
                            onChanged: (String newValue) {
                              // Update the selected option
                              setState(() {
                                selectedOption = newValue;
                              });
                            },
                            width: MediaQuery.of(context).size.width /
                                1, // Set the desired width
                            hasBorder:
                                false, // Set to true if you want a border, false otherwise (default is true)
                            textStyle: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: AppFont.medium,
                              color: ColorApp.abu,
                            ), // Replace with your desired text style
                          ),
                          SizedBox(height: 10),
                          Image.asset(
                            "assets/images/map.png",
                            width: MediaQuery.of(context).size.width,
                            height: 120.0,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Payment Method",
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: AppFont.medium,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedPaymentMethod,
                                isExpanded: true,
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      selectedPaymentMethod = newValue;
                                    });
                                  }
                                },
                                items: paymentMethods.map((payment) {
                                  return DropdownMenuItem<String>(
                                    value: payment['method'],
                                    child: ListTile(
                                      leading: Image.asset(
                                        payment['image'],
                                        width: 30,
                                        height: 30,
                                      ),
                                      title: Text(
                                        payment['method'],
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add any other widgets or content you want inside the container
                  ),
                ),
              ),
            ),
          ),
          PartialOverlayWidget(
            overlayHeight: MediaQuery.of(context).size.height / 3.1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp 1.753.950",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp 60.200",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DashedDivider(
                        height: 2.0, // Set the height of the dashed line
                        color: Colors.grey, // Set the color of the dashed line
                        dashWidth: 10.0, // Set the width of each dash
                        dashSpace: 5.0, // Set the space between each dash
                        strokeWidth:
                            2.0, // Set the stroke width of the dashed line
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Cost",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp 1.814.150",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomButton(
                    text: "Checkout",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartDetail(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
