import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/features/cart/presentation/widgets/dashdivider.dart';
import 'package:clean_msib/features/cart/presentation/widgets/partialoverlaywidget.dart';
import 'package:flutter/material.dart';

class CartDetail extends StatefulWidget {
  const CartDetail({super.key});

  @override
  State<CartDetail> createState() => _CartDetailState();
}

class _CartDetailState extends State<CartDetail> {
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
                        const Spacer(),
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
                        const Spacer(),
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
