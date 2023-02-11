import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsCard extends StatelessWidget {
  final String title;
  const SettingsCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.03),
        ),
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 25,right:25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w600
            ),
          ),
          const Opacity(
            opacity: 0.5,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 17,
            )
          )
        ],
      ),
    );
  }
}