import 'package:carbon_icons/carbon_icons.dart';
import 'package:clean_msib/core/constants/color.dart';
import 'package:clean_msib/features/home/presentation/pages/belanja.dart';
import 'package:clean_msib/features/home/presentation/pages/home.dart';
import 'package:clean_msib/features/home/presentation/pages/pengingat.dart';
import 'package:clean_msib/features/home/presentation/pages/wishlist.dart';
import 'package:clean_msib/features/profile/presentation/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentTab = 0;

  final List<Widget> screens = [
    Home(),
    const WishList(),
    const Belanja(),
    const Profile(),
    const Pengingat()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = const Belanja();
            currentTab = 3;
          });
        },
        backgroundColor: currentTab == 3 ? ColorApp.primary : ColorApp.putih,
        child: Icon(
          Icons.shopping_bag,
          size: 24.0,
          color: currentTab == 3 ? ColorApp.putih : const Color(0xff87c6e7),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: ColorApp.putih,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CarbonIcons.home,
                          color: currentTab == 0
                              ? ColorApp.page
                              : const Color(0xff87c6e7),
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0
                                ? ColorApp.page
                                : const Color(0xff87c6e7),
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const WishList();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CarbonIcons.favorite,
                          color: currentTab == 1
                              ? ColorApp.page
                              : const Color(0xff87c6e7),
                        ),
                        Text(
                          'WishList',
                          style: TextStyle(
                            color: currentTab == 1
                                ? ColorApp.page
                                : const Color(0xff87c6e7),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //Right tab Bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Pengingat();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CarbonIcons.notification,
                          color: currentTab == 4
                              ? ColorApp.page
                              : const Color(0xff87c6e7),
                        ),
                        Text(
                          'Pengingat',
                          style: TextStyle(
                            color: currentTab == 4
                                ? ColorApp.page
                                : const Color(0xff87c6e7),
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Profile();
                        currentTab = 5;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CarbonIcons.user_avatar,
                          color: currentTab == 5
                              ? ColorApp.page
                              : const Color(0xff87c6e7),
                        ),
                        Text(
                          'Profil',
                          style: TextStyle(
                            color: currentTab == 5
                                ? ColorApp.page
                                : const Color(0xff87c6e7),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
