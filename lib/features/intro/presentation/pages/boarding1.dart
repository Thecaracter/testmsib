import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/core/constants/fontweight.dart';
import 'package:clean_msib/core/widget/custombutton.dart';
import 'package:clean_msib/features/auth/presentation/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  final List<String> imageList = [
    "assets/images/onboarding1.png",
    "assets/images/onboarding2.png",
    "assets/images/onboarding3.png",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: PageController(
              initialPage: currentIndex,
            ),
            itemCount: imageList.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageList[currentIndex]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 20,
                child: DotsIndicator(
                  dotsCount: imageList.length,
                  position: currentIndex,
                  decorator: DotsDecorator(
                    activeColor: ColorApp.jingga,
                    color: Colors.white,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 80,
                child: Center(
                  child: CustomButton(
                    text: currentIndex == 0 ? "Get Started" : "Next",
                    fontWeight: AppFont.semibold,
                    backgroundColor:
                        Colors.white, // Ganti dengan warna yang diinginkan
                    textColor: Colors.black,

                    // Ganti dengan warna yang diinginkan
                    onPressed: () {
                      if (currentIndex == 2) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      } else {
                        currentIndex++;
                        setState(() {});
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
