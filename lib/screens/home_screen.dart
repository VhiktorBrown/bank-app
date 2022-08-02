import 'package:flutter/cupertino.dart';

import '../components/app_bar.dart';
import '../components/card.dart';
import '../components/recent_transactions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          child: Column(
            children: [
              AppBar(),
              CardList(),
              RecentTransactions()
            ],
          ),
        ));
  }
}
