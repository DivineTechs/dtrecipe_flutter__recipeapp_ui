import 'package:dots_indicator/dots_indicator.dart';
import 'package:dtrecipe/utills/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:fullscreen/fullscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() {
    return IntroState();
  }
}

class IntroState extends State<Intro> {
  void enterFullScreen(FullScreenMode fullScreenMode) async {
    await FullScreen.enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
  }

  PageController pageController = PageController();
  final currentPageNotifier = ValueNotifier<int>(0);
  int position = 0;

  List<String> pagerimg = [
    'assets/images/iconOne.png',
    'assets/images/iconTwo.png',
    'assets/images/iconThree.png',
  ];

  List<String> pagertext = [
    "Read the recipe and make delicious food",
    "Eat food that Is healthy for you",
    "Get all heathly recipes that you need"
  ];

  Future chack() async {
    SharedPreferences homeprefs = await SharedPreferences.getInstance();
    homeprefs.setBool('seen', true);
  }

  void changeText(){
    position == pagerimg.length-1  ? "finish" : "Skip";
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
    //     .copyWith(statusBarColor: const Color(0xffffffff)));

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xffffffff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 6,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.only(right: 20),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/inrobg.png",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    ),
                    Positioned(
                      child: PageView.builder(
                        controller: pageController,
                        itemCount: pagerimg.length,
                        reverse: false,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Positioned(
                                top: 40,
                                left: 10,
                                child: Image.asset(
                                  pagerimg[index],
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                            ],
                          );
                        },
                        onPageChanged: (index) {
                          setState(() {
                            position = index;
                            currentPageNotifier.value = index;
                            changeText();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: CirclePageIndicator(
                  itemCount: pagerimg.length,
                  selectedDotColor: primarycolor,
                  dotColor: indicatercolor,
                  currentPageNotifier: currentPageNotifier,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: PageView.builder(
                  // controller: pageController,
                  itemCount: pagertext.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      pagertext[position],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff683507),
                      ),
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      position = index;
                    });
                  },
                ),
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: primarycolor,
                      child: Image.asset("assets/images/next.png",width: 20,height: 20,),
                    ),
                    onTap: () {
                      print("position : $position");
                      print(pagerimg.length);
                      if (position == pagerimg.length - 1) {
                        chack();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const Home();
                        }));
                      }
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                  ),
                )),
            Flexible( 
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: GestureDetector(
                  child: Text(
                    position == pagerimg.length-1  ? "finish" : "Skip",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xffFF891C)),
                  ),
                  onTap: () {
                    chack();
                    print("position : $position");
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const Home();
                    }));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
