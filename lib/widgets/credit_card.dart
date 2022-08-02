import 'package:bank_app/utils/theme_colors.dart';
import 'package:bank_app/utils/theme_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 216,
        width: 380,
        decoration: BoxDecoration(
          color: ThemeColors.black,
          borderRadius: BorderRadius.circular(20),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ 4,459", style: ThemeStyles.cardMoney,),

                    Container(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset("assets/images/hide.svg",color: Colors.grey,),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24.0,
                    bottom: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Victor Brown", style: ThemeStyles.cardDetails,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text("5017", style: ThemeStyles.cardDetails,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: 17,
                            height: 17,
                            child: SvgPicture.asset("assets/images/four_dots.svg", color: const Color(0xff66646d),),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: 17,
                            height: 17,
                            child: SvgPicture.asset("assets/images/four_dots.svg", color: const Color(0xff66646d),),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text("9527", style: ThemeStyles.cardDetails,),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
