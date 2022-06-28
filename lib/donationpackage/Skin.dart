import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sdp_organ_donation/display_hospi/display_skin_hospi.dart';

class Skin extends StatelessWidget{
  CollectionReference skin_donors = FirebaseFirestore.instance.collection('skin_donors');
  late String name, address, dob, contact, kin_contact, kin_name, kin_address, kin_email, bloodgroup, skindis, relation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                  child: Text("Donor's Information",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Full Name*'),
                    onChanged: (value){
                      name = value;
                    },

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Phone Number*'),
                    onChanged: (value){
                      contact = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Birth Date*'),
                    onChanged: (value){
                      dob = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Address*'),
                    onChanged: (value){
                      address = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Blood Group*'),
                    onChanged: (value){
                      bloodgroup = value;
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Any active skin disease?*'),
                    onChanged: (value){
                      skindis = value;
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                  child: Text("Next to kin's Information*",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Full Name*'),
                    onChanged: (value){
                      kin_name = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Phone Number*'),
                    onChanged: (value){
                      kin_contact = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Address*'),
                    onChanged: (value){
                      kin_address = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email*'),
                    onChanged: (value){
                      kin_email = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Relationship to Donor*'),
                    onChanged: (value){
                      relation = value;
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),

                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.white,
                    child: ElevatedButton(
                        child: Text('Submit'),
                        onPressed: () async => [
                          await skin_donors.add(
                              {
                                'name' : name,
                                'contact' : contact,
                                'dob' : dob,
                                'address' : address,
                                'bloodgroup' : bloodgroup,
                                'skindis' : skindis,
                                'kin_name' : kin_name,
                                'kin_contact' : kin_contact,
                                'kin_address' : kin_address,
                                'kin_email' : kin_email,
                                'relation' : relation
                              }
                          ),
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => display_skin_hospi()),
    )
                        ]

                    ),
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }

}