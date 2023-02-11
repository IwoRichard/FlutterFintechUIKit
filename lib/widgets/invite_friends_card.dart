import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget inviteFriend() {
  return Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.orange.shade50,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/giftbox.png'),fit: BoxFit.cover)
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          'Invite Friends',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600, fontSize: 17
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          'Earn a \$10 bonus when they sign up!',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(color: Colors.black.withOpacity(.5)),
        )
      ],
    ),
  );
}