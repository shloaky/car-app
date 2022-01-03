import 'package:flutter/material.dart';
import 'package:untitled/screens/login/login.dart';
import 'package:untitled/screens/onboarding/sizeConfig.dart';

import 'onboardingData.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;
  Color kPrimaryColor = Color(0xff009DAE);
  Color kSecondaryColor = Color(0xff71DFE7);

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingContents.length,
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  Text(
                    onboardingContents[index].title,
                    style: TextStyle(
                      fontFamily: 'Klasik',
                      fontSize: SizeConfig.blockSizeH! * 7,
                      color: kSecondaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  Container(
                    height: sizeV * 50,
                    child: Image.network(
                      onboardingContents[index].image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: sizeV * 5,
                  ),
              Text(
                onboardingContents[index].subtitle,
                style: TextStyle(
                  fontFamily: 'Klasik',
                  fontSize: SizeConfig.blockSizeH! * 7,
                  color: kSecondaryColor,
                ),
                textAlign: TextAlign.center,
              ),
                  SizedBox(
                    height: sizeV * 5,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  currentPage == onboardingContents.length - 1
                      ? Expanded(
                          child: Container(
                            width: 300,
                            child: RaisedButton(
                              child: Text('Get Started'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                              color: kPrimaryColor,
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              //   onTap: (){
                              // Navigator.push(
                              // context,
                              // MaterialPageRoute(
                              // builder: (context) => SignUpPage()));
                              // },
                              borderRadius: BorderRadius.circular(6),
                              splashColor: Colors.black12,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: SizeConfig.blockSizeH! * 4.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: List.generate(
                                onboardingContents.length,
                                (index) => dotIndicator(index),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                              borderRadius: BorderRadius.circular(6),
                              splashColor: Colors.black12,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: SizeConfig.blockSizeH! * 4.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
