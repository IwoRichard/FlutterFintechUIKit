import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../models/contacts.dart';

Future<dynamic> bottomSheet(BuildContext context, Contacts data) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context, 
    builder: (context){
      return ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 500),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Send Money',
                    style: GoogleFonts.inter(
                      fontSize: 17, fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.orange.shade400,width: 2)
                    ),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(data.image),
                      backgroundColor: Colors.blue.withOpacity(.1),
                    ),
                  ),
                  title: Text(
                    data.name,
                    style: GoogleFonts.inter(
                      fontSize: 15, fontWeight: FontWeight.w600
                    ),
                  ),
                  subtitle: Text(
                    data.number
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  'How much do you want to send?',
                  style: GoogleFonts.inter(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5,),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade700
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Iconsax.send_1,color: Colors.white,size: 16,),
                      const SizedBox(width: 5,),
                      Text(
                        'Send',
                        style: GoogleFonts.inter(color: Colors.white,fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Center(
                  child: Text(
                    'Powered by me.io',
                    style: GoogleFonts.inter(),
                  ),
                ),
                const SizedBox(height: 5,),
              ],
            ),
          )
        ),
      );
    }
  );
}