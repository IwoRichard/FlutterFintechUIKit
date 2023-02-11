import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class CardDetailsScreen extends StatefulWidget {
  String cardName;
  String cardNumber;
  String cardBalance;
  String expiryDate;
  String cvvCode;
  String cardLogo;
  Color cardColor;
  CardDetailsScreen({
    Key? key,
    required this.cardName,
    required this.cardNumber,
    required this.cardBalance,
    required this.expiryDate,
    required this.cvvCode,
    required this.cardLogo,
    required this.cardColor,
  }) : super(key: key);

  @override
  State<CardDetailsScreen> createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)
        ),
        title: Text(
          'Card details',
          style: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15,10,15,10),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2/1,
              child: Container(
                decoration: BoxDecoration(
                  color: widget.cardColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 30,maxHeight: 30),
                        child: Image(image: AssetImage(widget.cardLogo))),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              Text(
                                'Balance',
                                style: GoogleFonts.inter(
                                  fontSize: 15, fontWeight: FontWeight.w500,color: Colors.white),
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                widget.cardBalance,
                                style: GoogleFonts.inter(
                                  fontSize: 22, fontWeight: FontWeight.w700,color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ),
                      Text(
                        widget.cardName,
                        style: GoogleFonts.inter(
                          color: Colors.white, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(230, 228, 255, 1),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  'Analytics',
                  style: GoogleFonts.inter(
                    fontSize: 17,fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Opacity(
              opacity: .5,
              child: Text(
                'Optimize your finances with our spending analysis, drive smart decisions.',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text('Copy info',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                  decoration: TextDecoration.underline
                ),),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Details Copied'),duration: Duration(seconds: 2),));
                },
              ),
            ),
            const SizedBox(height: 5,),
            rowItem('Card No.', widget.cardNumber, Iconsax.card),
            rowItem('Expiry date', widget.expiryDate, Iconsax.card_slash),
            rowItem('CVV code', widget.cvvCode, Iconsax.card_edit),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.2,color: Colors.red),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        'Delete',
                        style: GoogleFonts.inter(
                          color:Colors.red, fontSize: 15,  fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        'Lock card',
                        style: GoogleFonts.inter(
                          color:Colors.white, fontSize: 15, fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget rowItem(title, number, icon) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey.shade200,
              child: Icon(icon,color: Colors.black.withOpacity(.5),),
            ),
            const SizedBox(width: 10,),
            Text(
              title,
              style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            Opacity(
              opacity: .7,
              child: Text(
                number,
                style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const Divider(
          height: 22,
        )
      ],
    );
  }
}