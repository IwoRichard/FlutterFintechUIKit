import'package:flutter/material.dart';
import 'package:flutter_fintech/models/transactions.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/action_buttons.dart';
import '../widgets/refer_and_earn.dart';
import '../widgets/transaction_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Transactions> transactions = transactionsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange[200],
                    backgroundImage: const AssetImage('assets/Avatar-9.png'),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Joey',
                        style: GoogleFonts.inter(
                          fontSize: 21,fontWeight: FontWeight.w600)
                      ),
                      Opacity(
                        opacity: .7,
                        child: Text(
                          "Hope you're good today.",
                          style: GoogleFonts.inter(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 23,),
              Text(
                'Balance',
                style: GoogleFonts.inter(
                  fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black.withOpacity(.4)
                ),
              ),
              const SizedBox(height: 2,),
              Text(
                '\$15,279.00',
                style: GoogleFonts.inter(
                  fontSize: 25, fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 1,),
              Opacity(
                opacity: .5,
                child: Text(
                  'updated 1 sec ago',
                  style: GoogleFonts.inter(
                    fontSize: 12,fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 22,),
              actionButtons(context),
              const SizedBox(height: 20,),
              referAndEarn(),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    'Recent Activity',
                    style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Text(
                    'See All',
                    style: GoogleFonts.inter(
                      color: Colors.black.withOpacity(.5),fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  primary: true,
                  shrinkWrap: true,
                  itemCount: transactionsList.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey.withOpacity(.3),
                      indent: 10,
                      endIndent: 10,
                      height: 20,
                    );
                  },
                  itemBuilder: (context, index){
                    var data = transactions[index];
                    return transactionCard(
                      data.title, 
                      data.date, 
                      data.price, 
                      data.debit, 
                    );
                  }
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}