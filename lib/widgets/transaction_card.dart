import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget transactionCard(title, date, price, debit,) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: debit == true ? Colors.red.shade100.withOpacity(.5) : Colors.green.shade100.withOpacity(.5)
        ),
        child: Center(
          child: Icon(
            debit == true ? Icons.arrow_downward_rounded : Icons.arrow_upward_rounded,
            color: debit == true ? Colors.red.shade400 : Colors.green.shade500,
          ),
        ),
      ),
      const SizedBox(width: 10,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 15,fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 2,),
          Opacity(
            opacity: .5,
            child: Text(
              date,
              style: GoogleFonts.inter(fontSize: 13),
            ),
          )
        ],
      ),
      const Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            price,
            style: GoogleFonts.inter(
              fontSize: 15,fontWeight: FontWeight.w500),
          ),
        ],
      )
    ],
  );
}