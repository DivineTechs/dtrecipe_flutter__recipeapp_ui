import 'package:dtrecipe/pages/bottomhome.dart';
import 'package:dtrecipe/pages/video.dart';
import 'package:dtrecipe/utills/color.dart';
import 'package:dtrecipe/widget/mytextfield.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    BottomHome(),
    Video(),
    Text("Meal Plan"),
    Text("Favourite"),
    Text("Setting"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: white,
          selectedFontSize: 12,
          unselectedItemColor: bottomUnselectItem,
          unselectedFontSize: 12,
          selectedIconTheme: const IconThemeData(color: primarycolor),
          unselectedIconTheme: const IconThemeData(color: bottomUnselectItem),
          elevation: 0,
          currentIndex: selectedIndex,
          selectedItemColor: primarycolor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: white,
              label: "Home",
              activeIcon: CircleAvatar(
                backgroundColor: bottomiconbg,
                radius: 17,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    "assets/images/home.png",
                    color: primarycolor,
                    width: 21,
                    height: 21,
                  ),
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: MyImage(
                  width: 21,
                  height: 21,
                  imagePath: "assets/images/home.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Video",
              backgroundColor: white,
              activeIcon: CircleAvatar(
                backgroundColor: bottomiconbg,
                radius: 17,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    "assets/images/video.png",
                    color: primarycolor,
                    width: 21,
                    height: 21,
                  ),
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: MyImage(
                  width: 21,
                  height: 21,
                  imagePath: "assets/images/video.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: white,
              label: "Meal plan",
              activeIcon: CircleAvatar(
                backgroundColor: bottomiconbg,
                radius: 17,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    "assets/images/mealplan.png",
                    color: primarycolor,
                    width: 21,
                    height: 21,
                  ),
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: MyImage(
                  width: 21,
                  height: 21,
                  imagePath: "assets/images/mealplan.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: white,
              label: "Favorite",
              activeIcon: CircleAvatar(
                backgroundColor: bottomiconbg,
                radius: 17,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    "assets/images/favourite.png",
                    color: primarycolor,
                    width: 21,
                    height: 21,
                  ),
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: MyImage(
                  width: 21,
                  height: 21,
                  imagePath: "assets/images/favourite.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: white,
              label: "Settings",
              activeIcon: CircleAvatar(
                radius: 17,
                backgroundColor: bottomiconbg,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/setting.png",
                    color: primarycolor,
                    width: 21,
                    height: 21,
                  ),
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: MyImage(
                  width: 21,
                  height: 21,
                  imagePath: "assets/images/setting.png",
                ),
              ),
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
