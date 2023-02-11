import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget currencyCard(currencies, price, percent, basePrice, up) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.shade50.withOpacity(.5),
        border: Border.all(color: Colors.blue.shade100),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: up == true ? Colors.green.shade100 : Colors.red.shade100,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Icon(
                Icons.arrow_downward_rounded,
                color: up == true ? Colors.green.shade400 : Colors.red.shade400
              ),
            ),
          ),
          const SizedBox(width: 5,),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currencies,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    price,
                    style: GoogleFonts.inter(),
                  )
                ],
              ),
              const SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    percent,
                    style: GoogleFonts.inter(
                      color: up == true ? Colors.green.shade500 : Colors.red.shade500
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    basePrice,
                    style: GoogleFonts.inter(
                      color: up == true ? Colors.green.shade500 : Colors.red.shade500
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }