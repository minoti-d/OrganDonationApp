import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sdp_organ_donation/welcome.dart';

class display_kidney extends StatelessWidget {
  final ref = FirebaseFirestore.instance.collection('kidney_donors');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: null,

        body: StreamBuilder(
          stream: ref.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
            return GridView.builder(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
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
                        Text("dob: " + snapshot.data!.docs[index].data()['dob']),
                        Text("blood group: " + snapshot.data!.docs[index].data()['bloodgroup']),
                        Text("smoke : " + snapshot.data!.docs[index].data()['smoke']),
                        Text("alcohol: " + snapshot.data!.docs[index].data()['alcohol']),
                        Text("BP Problems: " + snapshot.data!.docs[index].data()['bp']),
                        Text("Diabetes: " + snapshot.data!.docs[index].data()['diabetes']),
                        Text("Heart Problems: " + snapshot.data!.docs[index].data()['heart']),
                        Text("Lung Problems: " + snapshot.data!.docs[index].data()['lung']),
                        Text("kin's name: " + snapshot.data!.docs[index].data()['kin_name']),
                        Text("kin's email: " + snapshot.data!.docs[index].data()['kin_email']),
                        Text("kin's contact: " + snapshot.data!.docs[index].data()['kin_contact']),
                        Text("kin's relation: " + snapshot.data!.docs[index].data()['relation']),

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

