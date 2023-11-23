import 'package:ets_driver/screen/ui/navbar/navbar_view.dart';
import 'package:ets_driver/screen/ui/select_country/selectCountry_view.dart';
import 'package:ets_driver/screen/ui/signUp/onboarding_reg/onboarding_reg_view.dart';
import 'package:ets_driver/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: [
                _buildPage(
                    'Your first car without a driver\'s license',
                    'Goes to meet people who just got their license',
                    'assets/splashscreen/Rectangle 4.png',
                    0,
                    Colors.blue),
                _buildPage(
                    'Always there: more than 1000 cars in Luxury app',
                    'Our company is a leader by the number of cars in the fleet',
                    "assets/splashscreen/Rectangle 7 (2).png",
                    1,
                    Colors.green),
              ],
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: DotsIndicator(
            //     dotsCount: 2,
            //     position: _currentPage,
            //     decorator: DotsDecorator(
            //       color: Colors.grey, // Inactive dot color
            //       activeColor: Colors.blue, // Active dot color
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(String text1, text2, imageUrl, int Number, Color color) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            color: Color.fromARGB(157, 0, 0, 0),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: defaultTheme.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 26),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          text2,
                          style: defaultTheme.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: List.generate(
                                2,
                                (index) => Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Container(
                                        height: 7,
                                        width:  _currentPage != index ? 7 : 16,
                                        decoration:
                                            BoxDecoration(color:_currentPage != index ? const Color.fromARGB(255, 102, 102, 102): Colors.white , 
                                            borderRadius: BorderRadius.circular(20)
                                            
                                            
                                            ),
                                      ),
                                )),
                          ),
                          Text(
                            ' Skip',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          _currentPage != 0
                              ? Get.to(SelectCountryView())
                              : _pageController.animateToPage(1,
                                  duration: Duration(microseconds: 10000),
                                  curve: Curves.bounceIn);
                        },
                        child: SvgPicture.asset(_currentPage == 0
                            ? 'assets/splashscreen/Loader (1).svg'
                            : 'assets/splashscreen/Loader.svg'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
