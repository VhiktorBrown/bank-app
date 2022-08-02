import 'dart:core';

import 'package:bank_app/utils/theme_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/transaction_page.dart';

class TransactionCard extends StatefulWidget {
  String title;
  String subTitle;
  double amount;
  String letter;
  Color color;

  TransactionCard(
      this.title,
      this.subTitle,
      this.amount,
      this.letter,
      this.color,{Key? key}) : super(key: key);

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TransactionPage(
                    title: widget.title,
                    subTitle: widget.subTitle,
                    letter: widget.letter,
                    amount: widget.amount,
                    color: widget.color,
                  )));
        },
        child: Container(
          height: 62,
          width: double.maxFinite,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 44.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: widget.color
                        ),
                        child: Center(
                          child: Text(
                            widget.letter,
                            style: const TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title, style: ThemeStyles.otherDetailsPrimary,),
                          const SizedBox(height: 4,),
                          Text(widget.subTitle, style: ThemeStyles.otherDetailsSecondary,),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 16.0,),
                  Row(
                    children: [
                      Text("\$${widget.amount}",
                        style: const TextStyle(color: Colors.redAccent),),
                      const SizedBox(width: 4,),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  )
                ],
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0.5,
                indent: 16.0,
                endIndent: 16.0,
              )
            ],
          ),

        ),
      ),
    );
  }
}
