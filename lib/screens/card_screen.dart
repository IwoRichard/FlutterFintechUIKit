import'package:flutter/material.dart';
import 'package:flutter_fintech/models/card_details.dart';
import 'package:flutter_fintech/models/contacts.dart';
import 'package:flutter_fintech/screens/card_details_screen.dart';
import 'package:flutter_fintech/widgets/bottom_sheet.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/analytics_card.dart';
import '../widgets/card.dart';
import '../widgets/invite_friends_card.dart';

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
                      child: cards(data),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15,),
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
            const SizedBox(height: 15,),
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
                      const SizedBox(height: 10,),
                      Text(
                        'Add',
                        style: GoogleFonts.inter(
                          fontSize: 13, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(width: 10,),
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
                            margin: const EdgeInsets.only(right: 10),
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
                                const SizedBox(height: 10,),
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
                    child: inviteFriend(),
                  ),
                  const SizedBox(width: 10,),
                  AspectRatio(
                    aspectRatio: 1/1,
                    child: analytics(),
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