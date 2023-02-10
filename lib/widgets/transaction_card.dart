import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget transactionCard(title, date, price, debit, logo,) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.all(5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1,color: Colors.grey.withOpacity(.2)),
          image: DecorationImage(image: AssetImage(logo),fit: BoxFit.cover)
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
        children: [
          Text(
            price,
            style: GoogleFonts.inter(
              fontSize: 15,fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 2,),
          debit == true ? Text(
            'debit',
            style: GoogleFonts.inter(color: Colors.red.shade500),
            ) : 
            Text(
              'credit',
              style: GoogleFonts.inter(color: Colors.green.shade500),
            )
        ],
      )
    ],
  );
}