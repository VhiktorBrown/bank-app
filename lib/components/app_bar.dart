import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBar extends StatefulWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 15.0,
        right: 8.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Home",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              fontFamily: 'Raleway'
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: null,
                  icon: Container(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset("assets/images/analytics.svg"),
                  )
              ),
              IconButton(
                  onPressed: null,
                  icon: Container(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset("assets/images/search.svg"),
                  )
              ),
              IconButton(
                  onPressed: null,
                  icon: Container(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset("assets/images/more.svg"),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
