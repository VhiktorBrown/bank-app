import 'package:bank_app/utils/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      bottom: 32,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            height: 45,
            width: double.maxFinite,
            child: Center(
              child: Text(
                "Add a Note",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: ThemeColors.lightGey,
              borderRadius: BorderRadius.circular(8.0)
            ),
          ),
        ));
  }
}
