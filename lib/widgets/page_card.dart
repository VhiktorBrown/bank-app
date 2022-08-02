import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/theme_styles.dart';

class PageCard extends StatefulWidget {
  String title;
  String subTitle;
  double amount;
  String letter;
  Color color;

  PageCard({Key? key,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.letter,
    required this.color,}) : super(key: key);

  @override
  State<PageCard> createState() => _PageCardState();
}

class _PageCardState extends State<PageCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
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
          ],
        ),

      ),
    );
  }
}
