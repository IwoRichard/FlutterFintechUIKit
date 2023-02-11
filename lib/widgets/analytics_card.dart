import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

Widget analytics() {
    return Container(
      padding: const EdgeInsets.only(left: 14,top: 14,right: 14),
      decoration: BoxDecoration(
        color: Colors.blue.shade100.withOpacity(.5),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue.shade200,
            child: const Icon(Iconsax.chart),
          ),
          const SizedBox(height: 5,),
          Text(
            'Analytics',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600, fontSize: 17
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            'Reveal costs and power informed choices',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(color: Colors.black.withOpacity(.5)),
          )
        ],
      ),
    );
  }