import 'package:dtrecipe/utills/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widget/mytextfield.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => VideoState();
}

class VideoState extends State<Video> {
  List<String> videoitemimg = <String>[
    "assets/images/bestrecipe_one.png",
    "assets/images/bestrecipe_two.png",
    "assets/images/bestrecipe_one.png",
    "assets/images/bestrecipe_one.png",
    "assets/images/bestrecipe_two.png",
    "assets/images/bestrecipe_two.png",
    "assets/images/bestrecipe_two.png",
    "assets/images/bestrecipe_two.png",
    "assets/images/bestrecipe_two.png",
    "assets/images/bestrecipe_two.png",
    "assets/images/bestrecipe_two.png",
    "assets/images/bestrecipe_two.png",
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
        scrollDirection: Axis.vertical,
        physics:const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            videotext(),
            videoitem(),
          ],
        ),
      ),
    );
  }

  Widget videotext() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      alignment: Alignment.center,
      color: white,
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  MyText(
                    color: homeappbartext,
                    fontsize: 18,
                    fontstyle: FontStyle.normal,
                    fontwaight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                    text: "Video",
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
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/images/search.png",
                height: 20,
                width: 20,
                color: searchIconcolor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget videoitem() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: SizedBox(
        height: 580,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: white,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 3,
            shrinkWrap: true,
            children: List.generate(
              videoitemimg.length,
              (index) {
                return Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                    videoitemimg[index],
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
                                      height:
                                          MediaQuery.of(context).size.height,
                                      alignment: Alignment.bottomLeft,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 7,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: MyText(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    color: homeappbartext,
                                                    text: "Chana Masala",
                                                    textalign: TextAlign.center,
                                                    fontstyle: FontStyle.normal,
                                                    fontsize: 13,
                                                    fontwaight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 3,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: MyText(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    color: textfieldcolor,
                                                    text: "130 Cal",
                                                    textalign: TextAlign.left,
                                                    fontstyle: FontStyle.normal,
                                                    fontsize: 9,
                                                    fontwaight:
                                                        FontWeight.w300),
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
                                      height:
                                          MediaQuery.of(context).size.height,
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 7,
                                            child: Container(
                                              alignment: Alignment.topRight,
                                              margin:
                                                  const EdgeInsets.only(top: 4),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 5,
                                                    ),
                                                    child: MyImage(
                                                      width: 12,
                                                      height: 12,
                                                      imagePath:
                                                          "assets/images/lightwatch.png",
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                      width: 2, height: 5),
                                                  MyText(
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                                                        const EdgeInsets.only(
                                                            left: 10),
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                    ),
                    Positioned(
                      left: 60,
                      top: 35,
                      child: Image.asset("assets/images/play.png",width: 50,height: 50,),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
