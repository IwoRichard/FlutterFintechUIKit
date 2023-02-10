import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/contacts.dart';
import '../widgets/bottom_sheet.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Contacts> contacts = accounts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)
        ),
        title: Text(
          'Contacts',
          style: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15,10,15,10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search contact',
                  hintStyle: GoogleFonts.inter(fontWeight: FontWeight.w500),
                  prefixIcon: const Icon(Icons.search,),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none
                  )
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              'Your contacts',
              style: GoogleFonts.inter(
                fontSize: 16, fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 5,),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                primary: true,
                itemCount: contacts.length,
                itemBuilder: (context, index){
                  var data = contacts[index];
                  return GestureDetector(
                    onTap: (){
                      bottomSheet(context, data);
                    },
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(data.image),
                        backgroundColor: Colors.blue.withOpacity(.1),
                      ),
                      title: Text(
                        data.name,
                        style: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.w600
                        ),
                      ),
                      subtitle: Text(
                        data.number
                      ),
                    ),
                  );
                }, 
                separatorBuilder: (context, index)=>const Divider(
                  height: 5,
                ), 
              ),
            ),
          ],  
        ),
      ),
    );
  }
}