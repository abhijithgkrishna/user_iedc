import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TestData extends StatefulWidget {
  const TestData({super.key});

  @override
  State<TestData> createState() => _TestDataState();
}

class _TestDataState extends State<TestData> {
  String mobile = "";

  @override
  void initState() {
    super.initState();
    // retrieveGender();
  }

  Future<void> retrieveGender() async {
    print("---hi--");
    try {
      // Replace 'your_collection_name' with your actual collection name
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection('attendees')
          .doc('11648959') // Replace with the document ID
          .get();
        print("-----$documentSnapshot-----");
      if (documentSnapshot.exists) {
        // Cast data() to Map<String, dynamic> to access fields
        final data = documentSnapshot.data() as Map<String, dynamic>;
        final mobile = data['mobile'] ?? "Gender not found";

        setState(() {
          this.mobile = mobile;
        });
      } else {
        setState(() {
          mobile = "Document not found";
        });
      }
    } catch (e) {
      setState(() {
        mobile = "Error retrieving document: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firestore Document Gender"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "mobile: $mobile",
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextButton(onPressed: (){
            retrieveGender();
          }, child: Text("get"),)
        ],
      ),
    );
  }
}
