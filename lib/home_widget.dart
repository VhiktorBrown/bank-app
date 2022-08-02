import 'package:bank_app/screens/home_screen.dart';
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
        selectedLabelStyle: ThemeStyles.otherDetailsSecondary,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/images/home-50.svg"),
              ),
              label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/images/transaction.svg"),
              ),
              label: "Transactions"
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/images/settings.svg"),
              ),
              label: "Settings"
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/images/account.svg"),
              ),
              label: "Account"
          ),
        ],
      ),
    );
  }
}
