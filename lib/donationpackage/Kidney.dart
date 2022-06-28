import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sdp_organ_donation/display_hospi/display_kidney_hospi.dart';

class Kidney extends StatelessWidget{
CollectionReference kidney_donors = FirebaseFirestore.instance.collection('kidney_donors');
late String name, address, dob, contact, kin_contact, kin_name, alcohol, kin_address, kin_email, bp, diabetes, heart, lung,  bloodgroup, relation, smoke;
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
                      hintText: 'Do you Smoke?*'),
                  onChanged: (value){
                    smoke = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child:TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Do you consume Alcohol?*'),
                  onChanged: (value){
                    alcohol = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child:TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Do you have BP problems?*'),
                  onChanged: (value){
                    bp = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child:TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Do you have Diabetes?*'),
                  onChanged: (value){
                    diabetes = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child:TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Do you have Heart diseases?*'),
                  onChanged: (value){
                    heart = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child:TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Do you have any Lungs diseases?*'),
                  onChanged: (value){
                    lung = value;
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
                        await kidney_donors.add(
                            {
                              'name' : name,
                              'contact' : contact,
                              'dob' : dob,
                              'address' : address,
                              'bloodgroup' : bloodgroup,
                              'smoke' : smoke,
                              'alcohol' : alcohol,
                              'bp' : bp,
                              'diabetes' : diabetes,
                              'heart' : heart,
                              'lung' : lung,
                              'kin_name' : kin_name,
                              'kin_contact' : kin_contact,
                              'kin_address' : kin_address,
                              'kin_email' : kin_email,
                              'relation' : relation
                            }),
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