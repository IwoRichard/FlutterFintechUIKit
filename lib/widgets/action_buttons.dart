import 'package:flutter/material.dart';
import 'package:flutter_fintech/screens/contact_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

Widget actionButtons(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.add_box_outlined,color: Colors.white,size: 16,),
                const SizedBox(width: 5,),
                Text(
                  'Deposit',
                  style: GoogleFonts.inter(color: Colors.white,fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ),
        const SizedBox(width: 15,),
        Expanded(
          child: InkWell(
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const ContactScreen()
                )
              );
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue.shade100)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Iconsax.send_1,color: Colors.blue.shade700,size: 16,),
                  const SizedBox(width: 5,),
                  Text(
                    'Send',
                    style: GoogleFonts.inter(color: Colors.blue.shade700,fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          )
        ),
      ],
    );
  }