import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseData extends StatefulWidget {
  const FirebaseData({Key? key});

  @override
  State<FirebaseData> createState() => _FirebaseDataState();
}

class _FirebaseDataState extends State<FirebaseData> {
  late FirebaseFirestore db;
  List<String> attendeeData = []; // Store data from Firestore

  @override
  void initState() {
    super.initState();
    try {
      db = FirebaseFirestore.instance;
      final attendeeRef =
          db.collection('workshops');
      attendeeRef.get().then((querySnapshot) {
        print("Successfully completed");
        print("Number of documents matching query: ${querySnapshot.docs.length}");
        for (var docSnapshot in querySnapshot.docs) {
          print('${docSnapshot.id} => ${docSnapshot.data()}');
        }
      });
    } catch (e) {
      print("Error querying Firestore: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Use ListView.builder to display the data as a list of Text widgets
            Text('gkjhkgh')
          ],
        ),
      ),
    );
  }
}
