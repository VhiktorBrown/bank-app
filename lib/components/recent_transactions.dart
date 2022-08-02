import 'package:bank_app/utils/theme_styles.dart';
import 'package:bank_app/widgets/transaction_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({Key? key}) : super(key: key);

  @override
  State<RecentTransactions> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 16,
                bottom: 32
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Transactions", style: ThemeStyles.primaryTitle,),
                  Text("See All", style: ThemeStyles.seeAll,)
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  TransactionCard(
                      "Alexis Jameson",
                      "Web Server Hosting",
                      438,
                      "A",
                      Colors.black),
                  TransactionCard(
                      "Bon Peterson",
                      "Payment for Laundry Services",
                      156,
                      "B",
                      Colors.blue),
                  TransactionCard(
                      "Williams Wright",
                      "Babysitting",
                      67.98,
                      "W",
                      Colors.grey),
                  TransactionCard(
                      "Kanataka Jordan",
                      "Payment for Development",
                      670,
                      "K",
                      Colors.black),
                  TransactionCard(
                      "April Benneth",
                      "Breakfast from Mac donald",
                      23.99,
                      "A",
                      Colors.blue),
                  TransactionCard(
                      "John Doe",
                      "Payment for Moving services",
                      99.99,
                      "J",
                      Colors.grey),
                ],
              ),
            )
          ],
        ),

    );
  }
}
