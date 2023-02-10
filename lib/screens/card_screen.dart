// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import'package:flutter/material.dart';
import 'package:flutter_fintech/models/card_details.dart';
import 'package:flutter_fintech/models/contacts.dart';
import 'package:flutter_fintech/screens/card_details_screen.dart';
import 'package:flutter_fintech/widgets/bottom_sheet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<Contacts> sendMoney = accounts;
  List<CardDetails> carddetails = cardDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card',
          style: GoogleFonts.inter(
            color: Colors.black,fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: .5,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 190,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                primary: true,
                shrinkWrap: true,
                itemCount: carddetails.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = carddetails[index];
                  return AspectRatio(
                    aspectRatio: 5/6,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context){
                              return CardDetailsScreen(
                                cardName: data.cardName, 
                                cardNumber: data.cardNumber, 
                                cardBalance: data.cardBalance, 
                                expiryDate: data.expiryDate, 
                                cvvCode: data.cvvCode, 
                                cardLogo: data.cardLogo, 
                                cardColor: data.cardColor
                              );
                            }
                          )
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(10),
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
                                  constraints: BoxConstraints(maxWidth: 30,maxHeight: 30),
                                  child: Image(image: AssetImage(data.cardLogo))),
                                Spacer(),
                                Icon(Icons.more_vert, color: Colors.white,)
                              ],
                            ),
                            Spacer(),
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
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.2)),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  'Create card',
                  style: GoogleFonts.inter(
                    fontSize: 17,fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Send money',
              style: GoogleFonts.inter(
                fontSize: 20, fontWeight: FontWeight.w600
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black.withOpacity(.2))
                        ),
                        child: Icon(Icons.add,size: 25,color: Colors.black.withOpacity(.2),),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Add',
                        style: GoogleFonts.inter(
                          fontSize: 13, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      primary: true,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: sendMoney.length,
                      itemBuilder: (BuildContext context, int index) {
                        var data = sendMoney[index];
                        return GestureDetector(
                          onTap: () {
                            bottomSheet(context, data);
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: AssetImage(data.image),fit: BoxFit.cover)
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  data.name,
                                  style: GoogleFonts.inter(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ),
                ],
              )
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 1/1,
                    child: Container(
                      padding: EdgeInsets.all(14),
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
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/giftbox.png'),fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Invite Friends',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600, fontSize: 17
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Earn a \$10 bonus when they sign up!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(color: Colors.black.withOpacity(.5)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  AspectRatio(
                    aspectRatio: 1/1,
                    child: Container(
                      padding: EdgeInsets.only(left: 14,top: 14,right: 14),
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
                            child: Icon(Iconsax.chart),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Analytics',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600, fontSize: 17
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Reveal costs and power informed choices',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(color: Colors.black.withOpacity(.5)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            )
          ],  
        ),
      ),
    );
  }
}