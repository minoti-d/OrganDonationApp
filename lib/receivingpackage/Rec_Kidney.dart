import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sdp_organ_donation/display_hospi/display_kidney_hospi.dart';

class Rec_Kidney extends StatelessWidget{
  CollectionReference rec_kidney = FirebaseFirestore.instance.collection('rec_kidney');
  late String name, address, dob, contact, email;
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
                  child: Text("Receiver's Information",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Full Name'),
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
                        hintText: 'Email'),
                    onChanged: (value){
                      email = value;
                    },

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Phone Number'),
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
                        hintText: 'Birth Date'),
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
                        hintText: 'Address'),
                    onChanged: (value){
                      address = value;
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
                          await rec_kidney.add(
                              {
                                'name' : name,
                                'contact' : contact,
                                'birthdate' : dob,
                                'address' : address,
                                'email' : email
                              }
                          ),
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => display_kidney_hospi()),
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