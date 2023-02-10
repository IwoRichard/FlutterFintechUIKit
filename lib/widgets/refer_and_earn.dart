import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget referAndEarn() {
  return AspectRatio(
    aspectRatio: 3/1,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange.shade50,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 15,top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Refer And Earn',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 7,),
                  Text(
                    'Earn when you refer a friend and they transact up to \$50',
                    style: GoogleFonts.inter(color: Colors.black.withOpacity(.7)),
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    children: [
                      Text(
                        'Refer a friend',
                        style: GoogleFonts.inter(fontWeight: FontWeight.w500,color:Colors.blue.shade700),
                      ),
                      const SizedBox(width: 5,),
                      Icon(Icons.arrow_forward_rounded,color: Colors.blue.shade700,size: 18,)
                    ],
                  )
                ],
              ),
            )
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1/1,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/giftbox.png'))
                    ),
                  ),
                ),
              ),
            )
          ),
        ],
      ),
    ),
  );
}