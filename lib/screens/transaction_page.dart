import 'package:bank_app/utils/theme_styles.dart';
import 'package:bank_app/widgets/add_note.dart';
import 'package:bank_app/widgets/details_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/theme_colors.dart';
import '../widgets/page_card.dart';

class TransactionPage extends StatefulWidget {
  String title;
  String subTitle;
  double amount;
  String letter;
  Color color;

  TransactionPage({Key? key,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.letter,
    required this.color,}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Sent"),
        titleTextStyle: ThemeStyles.primaryTitle,
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: ThemeColors.black,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16,
                  top: 32,
                  bottom: 8),
                  child: Row(
                    children: [
                      Text("Outgoing Transactions", style: ThemeStyles.primaryTitle,),
                    ],
                  ),
                ),
                PageCard(
                  title: widget.title,
                  subTitle: widget.subTitle,
                  letter: widget.letter,
                  amount: widget.amount,
                  color: widget.color,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16, top: 32, bottom: 8),
                  child: Row(
                    children: [
                      Text("Details", style: ThemeStyles.primaryTitle,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Container(
                          width: 15,
                          height: 15,
                          child: SvgPicture.asset("assets/images/bank_transfer.svg"),
                        ),
                      ),
                      Text("Bank Transfer", style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                DetailsDivider(),
                Padding(
                    padding: EdgeInsets.only(left: 16, top: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Container(
                          width: 74,
                          height: 32,
                          decoration: BoxDecoration(
                              color: ThemeColors.lightGey,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              "#finance", style: ThemeStyles.tagText,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Container(
                          width: 74,
                          height: 32,
                          decoration: BoxDecoration(
                              color: ThemeColors.lightGey,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              "#fintech", style: ThemeStyles.tagText,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Container(
                          width: 74,
                          height: 32,
                          decoration: BoxDecoration(
                              color: ThemeColors.lightGey,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              "#loan", style: ThemeStyles.tagText,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        child: SvgPicture.asset("assets/images/edit.svg"),
                      ),
                    ],
                  ),
                ),
                DetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("IPAN", style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text("5654 8293 3938 290 2928 933", style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                DetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CVC", style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text("5682933938XXX", style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                DetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Transfer Key", style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text("565XX", style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                DetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Transfer Details", style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text(widget.subTitle, style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                DetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Routing Code", style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text("5654CVH76AE", style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                DetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Routing Number", style: ThemeStyles.otherDetailsSecondary,),
                      const SizedBox(height: 5.0,),
                      Text("565439283744638", style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                const DetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Routing Number", style: ThemeStyles.otherDetailsSecondary,),
                      const SizedBox(height: 5.0,),
                      Text("565439283744638", style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                const DetailsDivider(),
              ],
            ),
            AddNote(),
          ],
        ),
      )
    );
  }
}
