import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumbersButton extends StatelessWidget {
  const NumbersButton({
    super.key,
    required this.text,
    required this.bgcolor,
    required this.tcolor,
    this.callback,
  });

  final String text;
  final Color bgcolor;
  final Color tcolor;
  final double? textSize = 30;
  final Function? callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      child: SizedBox(
        height: 70,
        width: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: bgcolor,
            foregroundColor: tcolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          onPressed: () => callback!(text),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: tcolor,
                fontSize: textSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
