import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsDivider extends StatefulWidget {
  const DetailsDivider({Key? key}) : super(key: key);

  @override
  State<DetailsDivider> createState() => _DetailsDividerState();
}

class _DetailsDividerState extends State<DetailsDivider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Divider(
        color: Colors.grey.withOpacity(0.4),
        thickness: 0.5,
        indent: 16,
        endIndent: 16,
      ),
    );
  }
}
