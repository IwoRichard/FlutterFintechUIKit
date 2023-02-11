import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/settings_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.orange[200],
                        backgroundImage: const AssetImage('assets/Avatar-9.png'),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Joey Tribiani",
                        style: GoogleFonts.inter(fontWeight: FontWeight.w700,fontSize: 17),),
                      Text(
                        "0987654321",
                        style: GoogleFonts.inter()
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Contact Details",
                          style: GoogleFonts.inter(
                            fontSize: 16,fontWeight: FontWeight.w500),
                        )
                      ),
                    ),
                    const SizedBox(height: 8,),
                    const SettingsCard(title: "Account Information"),
                    const Divider(height: 0,),
                    const SettingsCard(title: "Email Address"),
                    const Divider(height: 0,),
                    const SettingsCard(title: "Phone Number"),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Security Settings",
                          style: GoogleFonts.inter(
                            fontSize: 16,fontWeight: FontWeight.w500),
                        )
                      ),
                    ),
                    const SizedBox(height: 8,),
                    const SettingsCard(title: "Password reset"),
                    const Divider(height: 0,),
                    const SettingsCard(title: "Face ID and Fingerprint"),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Other Settings",
                          style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ),
                    ),
                    const SizedBox(height: 8,),
                    const SettingsCard(title: "Notifications"),
                    const Divider(height: 0,),
                    const SettingsCard(title: "Support"),
                    const SizedBox(height: 8,),
                    TextButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.logout,color: Colors.red,), 
                      label: Text(
                        'Logout',
                        style: GoogleFonts.inter(color: Colors.red),
                      )
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}