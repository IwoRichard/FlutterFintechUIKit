import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/card_details.dart';

Widget cards(CardDetails data) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: data.cardColor,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 30,maxHeight: 30),
              child: Image(image: AssetImage(data.cardLogo))),
            const Spacer(),
            const Icon(Icons.more_vert, color: Colors.white,)
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: .5,
              child: Text(
                'Balance',
                style: GoogleFonts.inter(
                  fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white
                )
              ),
            ),
            Text(
              data.cardBalance,
              style: GoogleFonts.inter(
                fontSize: 17, fontWeight: FontWeight.w700,color: Colors.white
              ),
            )
          ],
        )
      ],
    ),
  );
}