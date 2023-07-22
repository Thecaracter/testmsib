import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/widget/backbutton.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/features/cart/presentation/pages/cartdetail.dart';
import 'package:clean_msib/features/cart/presentation/widgets/dashdivider.dart';
import 'package:clean_msib/features/cart/presentation/widgets/partialoverlaywidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class Product {
  final String photoUrl;
  final String name;
  final int price;
  int count = 0;

  Product({required this.photoUrl, required this.name, required this.price});
}

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List<Product> dummyProducts = [
    Product(
      photoUrl: 'assets/images/sepatu1.png',
      name: 'Nike Club Max',
      price: 584950,
    ),
    Product(
      photoUrl: 'assets/images/sepatu2.png',
      name: 'Nike Air Max 200',
      price: 940500,
    ),
    Product(
      photoUrl: 'assets/images/sepatu1.png',
      name: 'Nike Air Max 270 Essential',
      price: 740950,
    ),
    Product(
      photoUrl: 'assets/images/sepatu1.png',
      name: 'Nike Air Max 270 Essential',
      price: 740950,
    ),
    Product(
      photoUrl: 'assets/images/sepatu1.png',
      name: 'Nike Air Max 270 Essential',
      price: 740950,
    ),
  ];

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
            fontWeight: FontWeight.bold,
            color: ColorApp.page,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: ColorApp.putih,
              child: Positioned(
                top: 30,
                left: 0,
                right: 0,
                bottom: 80,
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: ListView.separated(
                    padding: const EdgeInsets.only(bottom: 250),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dummyProducts.length,
                    separatorBuilder: (context, index) => SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final productData = dummyProducts[index];
                      final String? photoUrl = productData.photoUrl;
                      final String? name = productData.name;
                      final int? price = productData.price;
                      int count = productData.count;

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
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
                          child: Slidable(
                            key: ValueKey(index),
                            startActionPane: ActionPane(
                              motion: ScrollMotion(),
                              children: [
                                Container(
                                  width: 50,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: ColorApp.primary,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            productData.count++;
                                          });
                                        },
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: ColorApp.putih,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        count.toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: ColorApp.putih,
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (productData.count > 0) {
                                              productData.count--;
                                            }
                                          });
                                        },
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: ColorApp.putih,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            endActionPane: ActionPane(
                              motion: ScrollMotion(),
                              children: [
                                Container(
                                  width: 90,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: ColorApp.merah,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.delete,
                                    size: 40.0,
                                    color: ColorApp.putih,
                                  ),
                                )
                              ],
                            ),
                            child: ListTile(
                              leading: photoUrl != null
                                  ? Container(
                                      height: 120,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: ColorApp.putih,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(photoUrl),
                                    )
                                  : Placeholder(),
                              title: Text(name ?? 'Unknown Product'),
                              subtitle: Text(
                                price != null
                                    ? 'Rp ${_formatCurrency(price)}'
                                    : 'Price not available',
                              ),
                            ),
                          ),
                        ),
                      );
                    },
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

String _formatCurrency(int value) {
  final formatCurrency =
      NumberFormat.decimalPattern('id'); // id for Indonesia locale
  return formatCurrency.format(value);
}
