import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mini_projek/Home/botnavbar.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  int indexOfPageview = 0;
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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 5, left: 4, right: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Page View
              Padding(
                padding: const EdgeInsets.only(top: 15),
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
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Favorite",
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
