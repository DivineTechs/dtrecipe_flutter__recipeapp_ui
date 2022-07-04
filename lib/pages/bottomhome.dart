import 'package:dtrecipe/utills/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import '../widget/mytextfield.dart';

class BottomHome extends StatefulWidget {
  const BottomHome({Key? key}) : super(key: key);

  @override
  State<BottomHome> createState() => BottomHomeState();
}

class BottomHomeState extends State<BottomHome> {
  PageController pageController = PageController();
  PageController newrecipeController = PageController();
  final currentPageNotifier = ValueNotifier<int>(0);
  int position = 0;

  List<String> pageviewimg = <String>[
    "assets/images/testimg.png",
    "assets/images/testimg.png",
    "assets/images/testimg.png",
    "assets/images/testimg.png",
  ];

  List<String> listCategory = <String>[
    "assets/images/gujarati.png",
    "assets/images/panjabi.png",
    "assets/images/south.png",
    "assets/images/kathiyavadi.png",
    "assets/images/chinese.png",
    "assets/images/italiyan.png",
  ];

  List<String> listCategoryname = <String>[
    "Gujarati",
    "Panjabi",
    "South Indian",
    "Kathiyavadi",
    "Chiness",
    "Italiyan"
  ];

  List<String> bestrecipe = <String>[
    "assets/images/bestrecipe_one.png",
    "assets/images/bestrecipe_two.png",
  ];

  List<String> cheiflimg = <String>[
    "assets/images/cheif_one.png",
    "assets/images/chief_two.png",
    "assets/images/chief_three.png",
    "assets/images/chief_four.png",
  ];

  List<String> cheifllistname = <String>[
    "George Washington",
    "Ulysses S. Grant",
    "Tasker H. Bliss",
    "Peyton C. March",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: white,
        ),
        automaticallyImplyLeading: false, // hides leading widget
        flexibleSpace: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Flexible(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Online Food",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff463e35),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "Recipe!",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff5c5146),
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            search(),
            pageview(),
            dotindicater(),
            cetegorytext(),
            listview(),
            newrecipetext(),
            pageviewnewrecipe(),
            bestrecipetext(),
            bestrecipelistview(),
            chieftext(),
            chieflistview(),
          ],
        ),
      ),
    );
  }

  Widget search() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: searchbordercolor, width: 1)),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              flex: 10,
              child: Container(
                child: Image.asset(
                  "assets/images/search.png",
                  height: 20,
                  width: 20,
                  color: searchIconcolor,
                ),
              ),
              ),
          const Flexible(
            flex: 90,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search your favourite food recipe....',
                  contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 5),
                  fillColor: black,
                  hoverColor: searchbordercolor,
                ),
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                    color: black),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget pageview() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: PageView.builder(
        controller: pageController,
        itemCount: pageviewimg.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "assets/images/testimg.png",
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: newrecipecolor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Text(
                    "New Recipe",
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: indicatercolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        onPageChanged: (index) {
          setState(() {
            position = index;
            currentPageNotifier.value = index;
          });
        },
      ),
    );
  }

  Widget dotindicater() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 20,
      alignment: Alignment.center,
      child: CirclePageIndicator(
        itemCount: pageviewimg.length,
        selectedDotColor: primarycolor,
        dotColor: indicatercolor,
        currentPageNotifier: currentPageNotifier,
      ),
    );
  }

  Widget cetegorytext() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          MyText(
            color: homeappbartext,
            fontsize: 16,
            fontstyle: FontStyle.normal,
            fontwaight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
            text: "Category",
            textalign: TextAlign.center,
          ),
          const SizedBox(width: 10),
          Image.asset(
            "assets/images/categoryicon.png",
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget listview() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: listCategory.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 75,
              height: 38,
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Card(
                elevation: 2,
                color: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 5,
                      child: Image.asset(
                        listCategory[index],
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(),
                    ),
                    Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: MyText(
                            overflow: TextOverflow.ellipsis,
                            color: homeappbartext,
                            text: listCategoryname[index],
                            fontsize: 10,
                            textalign: TextAlign.center,
                            fontstyle: FontStyle.normal,
                          ),
                        )),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget newrecipetext() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          MyText(
            color: homeappbartext,
            fontsize: 16,
            fontstyle: FontStyle.normal,
            fontwaight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
            text: "New Recipe",
            textalign: TextAlign.center,
          ),
          const SizedBox(width: 10),
          Image.asset(
            "assets/images/categoryicon.png",
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget pageviewnewrecipe() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: PageView.builder(
        controller: newrecipeController,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "assets/images/newrecipe.png",
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),
                ),
                const Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    "Italian Pizza",
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 60,
                  child: Row(children: [
                    Image.asset(
                      "assets/images/watch.png",
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(
                      width: 5,
                      height: 5,
                    ),
                    MyText(
                      overflow: TextOverflow.ellipsis,
                      color: white,
                      text: "20 min",
                      textalign: TextAlign.center,
                      fontstyle: FontStyle.normal,
                      fontsize: 12,
                      fontwaight: FontWeight.normal,
                    ),
                  ]),
                ),
                const Positioned(
                  top: 40,
                  left: 10,
                  child: Text(
                    "12 Ingridients",
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const Positioned(
                  top: 200,
                  left: 10,
                  child: Text(
                    "130 Calories ",
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 180,
                  child: Row(children: [
                    Image.asset(
                      "assets/images/star.png",
                      width: 10,
                      height: 10,
                    ),
                    const SizedBox(
                      width: 5,
                      height: 5,
                    ),
                    MyText(
                      overflow: TextOverflow.ellipsis,
                      color: white,
                      text: "4.8",
                      textalign: TextAlign.center,
                      fontstyle: FontStyle.normal,
                      fontsize: 12,
                      fontwaight: FontWeight.normal,
                    ),
                  ]),
                ),
                Positioned(
                  left: 260,
                  top: 90,
                  child: GestureDetector(
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/images/newrecipenext.png",
                          width: 30, height: 30),
                    ),
                    onTap: () {
                      newrecipeController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget bestrecipetext() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [ 
          MyText(
            color: homeappbartext,
            fontsize: 16,
            fontstyle: FontStyle.normal,
            fontwaight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
            text: "Best Recipe",
            textalign: TextAlign.center,
          ),
          const SizedBox(width: 10),
          Image.asset(
            "assets/images/categoryicon.png",
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget bestrecipelistview() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: bestrecipe.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 180,
              height: 80,
              margin: const EdgeInsets.fromLTRB(5, 0, 0, 15),
              child: Card(
                elevation: 2,
                color: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Flexible(
                        flex: 4,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Image.asset(
                            bestrecipe[index],
                            fit: BoxFit.fill,
                          ),
                        )),
                    Flexible(
                      flex: 2,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 7,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height,
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: MyText(
                                            overflow: TextOverflow.ellipsis,
                                            color: homeappbartext,
                                            text: "Chana Masala",
                                            textalign: TextAlign.center,
                                            fontstyle: FontStyle.normal,
                                            fontsize: 13,
                                            fontwaight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height,
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: MyText(
                                            overflow: TextOverflow.ellipsis,
                                            color: textfieldcolor,
                                            text: "130 Cal",
                                            textalign: TextAlign.left,
                                            fontstyle: FontStyle.normal,
                                            fontsize: 10,
                                            fontwaight: FontWeight.w300),
                                      ),
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
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 7,
                                    child: Container(
                                      alignment: Alignment.topRight,
                                      margin: const EdgeInsets.only(top: 4),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                            ),
                                            child: MyImage(
                                              width: 12,
                                              height: 12,
                                              imagePath:
                                                  "assets/images/lightwatch.png",
                                            ),
                                          ),
                                          const SizedBox(width: 2, height: 5),
                                          MyText(
                                            overflow: TextOverflow.ellipsis,
                                            color: textfieldcolor,
                                            text: "30 min | 20 Ing",
                                            textalign: TextAlign.center,
                                            fontstyle: FontStyle.normal,
                                            fontsize: 10,
                                            fontwaight: FontWeight.w300,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: MyImage(
                                                width: 10,
                                                height: 10,
                                                imagePath:
                                                    "assets/images/primarystar.png"),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                            height: 5,
                                          ),
                                          MyText(
                                            overflow: TextOverflow.ellipsis,
                                            color: textfieldcolor,
                                            text: "4.8",
                                            textalign: TextAlign.center,
                                            fontstyle: FontStyle.normal,
                                            fontsize: 10,
                                            fontwaight: FontWeight.w300,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget chieftext() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          MyText(
            color: homeappbartext,
            fontsize: 16,
            fontstyle: FontStyle.normal,
            fontwaight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
            text: "chief",
            textalign: TextAlign.center,
          ),
          const SizedBox(width: 10),
          Image.asset(
            "assets/images/chef.png",
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget chieflistview() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      margin: const EdgeInsets.only(
        left: 15,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: cheifllistname.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              SizedBox(
                height: 150,
                child: Container(
                  width: 140,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 20),
                    child: Card(
                      elevation: 5,
                      color: const Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 7,
                            fit: FlexFit.tight,
                            child: Container(),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Center(
                              child: Text(
                                cheifllistname[index],
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: black,
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MyImage(
                                        width: 10,
                                        height: 10,
                                        imagePath:
                                            "assets/images/primarystar.png"),
                                    const SizedBox(width: 5, height: 10),
                                    MyText(
                                      overflow: TextOverflow.ellipsis,
                                      color: textfieldcolor,
                                      text: "4.8",
                                      textalign: TextAlign.justify,
                                      fontstyle: FontStyle.normal,
                                      fontsize: 10,
                                      fontwaight: FontWeight.w300,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 35,
                bottom: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      cheiflimg[index],
                      width: 70,
                      height: 70,
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
