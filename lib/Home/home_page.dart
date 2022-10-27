import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mini_projek/Home/botnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexOfPageview = 0;
  int indexOfCategories = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();

    ///Index of Page View Automatically
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (indexOfPageview < 12) {
        indexOfPageview++;
        pageController.animateToPage(
          indexOfPageview,
          duration: const Duration(milliseconds: 350),
          curve: Curves.ease,
        );
      } else {
        indexOfPageview = -1;
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  /// List of Icons(for Categories) just for debuging
  List<IconData> icons = [
    Icons.radio,
    Icons.games,
    Icons.wifi,
    Icons.earbuds_battery,
    Icons.local_parking_rounded,
  ];

  String showProductName(index) {
    switch (index) {
      case 0:
        return "Live Music";
      case 1:
        return "Game";
      case 2:
        return "Free Wi-Fi";
      case 3:
        return "free Charging";
      case 4:
        return "Parking Area";

      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 8, left: 4, right: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(3)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search_sharp,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),

              /// Titles
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Selamat Datang Sobat Lapar",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),

              /// Page View
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: PageView.builder(
                      controller: pageController,
                      onPageChanged: (val) {
                        setState(() {
                          indexOfPageview = val;
                        });
                      },
                      itemCount: 12,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (ctx, index) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/${index + 1}.png'),
                                fit: BoxFit.cover),
                          ),
                        );
                      }),
                ),
              ),

              /// Page Indicator
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child:
                    Align(alignment: Alignment.center, child: pageindicator()),
              ),

              /// Top Categories Text
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Fasilitas Warmindo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "SEE ALL",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              /// Categories List
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: icons.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              indexOfCategories = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            margin: const EdgeInsets.all(3),
                            width: 55,
                            decoration: BoxDecoration(
                                color: indexOfCategories == index
                                    ? Color.fromARGB(255, 53, 202, 167)
                                    : Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Icon(
                                icons[index],
                                color: indexOfCategories == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),

              /// Product List
              SizedBox(
                width: double.infinity,
                height: 218,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      showProductName(indexOfCategories),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 53, 202, 167)),
                    ),
                    Icon(
                      icons[indexOfCategories],
                      size: 50,
                      color: Color.fromARGB(255, 53, 202, 167),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Smooth Page Indicator Widget
  SmoothPageIndicator pageindicator() {
    return SmoothPageIndicator(
      controller: pageController,
      count: 12,
      effect: WormEffect(
          spacing: 5.0,
          radius: 10.0,
          dotWidth: 12.0,
          dotHeight: 12.0,
          dotColor: Colors.grey.shade400,
          activeDotColor: Color.fromARGB(255, 53, 202, 167)),
      onDotClicked: (newIndex) {
        setState(() {
          pageController.animateToPage(newIndex,
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
        });
      },
    );
  }
}
