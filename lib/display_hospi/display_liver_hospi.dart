import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sdp_organ_donation/welcome.dart';

class display_liver_hospi extends StatelessWidget {
  final ref = FirebaseFirestore.instance.collection('liver_hospi');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: null,

        body: StreamBuilder(
          stream: ref.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
            return GridView.builder(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: snapshot.hasData?snapshot.data!.docs.length:0,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 150,
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Text("name: " + snapshot.data!.docs[index].data()['name']),
                        Text("address: " + snapshot.data!.docs[index].data()['address']),
                        Text("contact: " + snapshot.data!.docs[index].data()['contact']),
                        Text("email: " + snapshot.data!.docs[index].data()['email']),
                        Text("Head doctors: " + snapshot.data!.docs[index].data()['doctors']),
                      ],
                    ),
                  );
                }
            );
          },

        )
    );

  }
}

