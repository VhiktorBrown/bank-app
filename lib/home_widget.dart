import 'package:bank_app/screens/home_screen.dart';
import 'package:bank_app/utils/theme_colors.dart';
import 'package:bank_app/utils/theme_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

//Bottom Navigation
class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    List<Widget> widgetOptions = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen()
    ];

    void onTabTapped(index){
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontFamily: 'Raleway', color: ThemeColors.black, fontSize: 10),
        unselectedLabelStyle: TextStyle(fontFamily: 'Raleway', color: ThemeColors.grey, fontSize: 10),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/images/home-50.svg",
                  color: selectedIndex == 0 ? ThemeColors.black : ThemeColors.grey,),
              ),
              label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/images/transaction.svg",
                  color: selectedIndex == 1 ? ThemeColors.black : ThemeColors.grey,),
              ),
              label: "Transactions"
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/images/settings.svg",
                  color: selectedIndex == 2 ? ThemeColors.black : ThemeColors.grey,),
              ),
              label: "Settings"
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/images/account.svg",
                  color: selectedIndex == 3 ? ThemeColors.black : ThemeColors.grey,),
              ),
              label: "Account",
          ),
        ],
      ),
    );
  }
}
