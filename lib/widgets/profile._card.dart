import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_iedc/pages/idPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  String name = '';
  String phoneNumber = '';
  String? bookingId;

  @override
  void initState() {
    super.initState();
  }

  
  sharedPreferencesFunction() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bookingId = prefs.getString("bookingId");
  }

  retrieveData() async {
    print("---hi--");

    try {
      print(bookingId);
      // Replace 'your_collection_name' with your actual collection name
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection('attendees')
          .doc(bookingId) // Replace with the document ID
          .get();
      print("-----$documentSnapshot-----");
      if (documentSnapshot.exists) {
        // Cast data() to Map<String, dynamic> to access fields
        final data = documentSnapshot.data() as Map<String, dynamic>;
        final name = data['name'] ?? "Name not found";
        final phoneNumber = data['mobile'];
        setState(() {
          this.name = name;
          this.phoneNumber = phoneNumber;
        });
      } else {
        setState(() {
          name = "Document not found";
        });
        return;
      }
    } catch (e) {
      setState(() {
        name = "Error retrieving document: $e";
      });
      return;
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    sharedPreferencesFunction();
    retrieveData();
    return SingleChildScrollView(
      child: Card(
        elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadowColor: Colors.white,
        color: Color.fromARGB(255, 255, 255, 255),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                      height: 195,
                      width: 250,
                      child: Center(
                        child: QrImageView(
                          data: bookingId!,
                          version: QrVersions.auto,
                        ),
                      )),
                ), //CircleAvatar
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                //SizedBox
                Text(
                  name,
                  style: GoogleFonts.dmSans(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 21), //Textstyle
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text.rich(
                        TextSpan(
                            text: 'Phone Number : ',
                            style: GoogleFonts.dmSans(
                                color: Colors.black54,
                                fontWeight: FontWeight.w800),
                            children: [
                              TextSpan(
                                text: phoneNumber,
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, top: 15),
                      child: Text.rich(
                        TextSpan(
                            text: 'Booking ID : ',
                            style: GoogleFonts.dmSans(
                                color: const Color.fromARGB(137, 8, 8, 8),
                                fontWeight: FontWeight.w800),
                            children: [
                              TextSpan(
                                text: bookingId,
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () async {
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      pref.remove("bookingId");
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IdEnteringPage()),
                        (route) =>
                            false, // This prevents going back to the previous route
                      );
                    },
                    child: Text('Logout'))
                //Text

                //SizedBox
              ],
            ),
          ),
        ),
      ),
    );
  }
}
