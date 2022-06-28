import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sdp_organ_donation/Hospital stuff/ViewWhat.dart';
import 'package:sdp_organ_donation/Success.dart';

class HospiRegi extends StatelessWidget {

  CollectionReference eye_hospi = FirebaseFirestore.instance.collection('eye_hospi');
  CollectionReference kidney_hospi = FirebaseFirestore.instance.collection('kidney_hospi');
  CollectionReference liver_hospi = FirebaseFirestore.instance.collection('liver_hospi');
  CollectionReference skin_hospi = FirebaseFirestore.instance.collection('skin_hospi');
  late String name, address, email, contact, doctors;

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
                child: Text("Fill in the details: ",
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child:TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name of Hospital'),
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
                      hintText: 'Address of Hosiptal'),
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
                      hintText: 'Phone number'),
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
                      hintText: 'Email ID'),
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
                      hintText: 'Head Doctors'),
                  onChanged: (value){
                    doctors = value;
                  },
                ),
              ),

              Padding(padding: EdgeInsets.only(top:40.0, left: 68.8, right: 68.8),
                child: ElevatedButton(
                  child: Text("Eye"),
                  onPressed: () async => [

                    await eye_hospi.add(
                    {
                    'name' : name,
                    'contact' : contact,
                    'email' : email,
                    'address' : address,
                    'doctors' : doctors
                    }
                ),

                  ],
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,)

                ),
              ),
              Padding(padding: EdgeInsets.only(top:20.0, left: 68.8, right: 68.8),
                child: ElevatedButton(
                  child: Text("Kidney"),
                  onPressed: () async => [

                await kidney_hospi.add(
                    {
                    'name' : name,
                    'contact' : contact,
                    'email' : email,
                    'address' : address,
                    'doctors' : doctors
                    }
                ),

                  ],
                  style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,)


              ),
              ),
              Padding(padding: EdgeInsets.only(top:20.0, left: 68.8, right: 68.8),
                child: ElevatedButton(
                  child: Text("Liver"),
                  onPressed: () async => [

                    await liver_hospi.add(
                        {
                          'name' : name,
                          'contact' : contact,
                          'email' : email,
                          'address' : address,
                          'doctors' : doctors
                        }
                    ),

                  ],
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,)


                ),
              ),
              Padding(padding: EdgeInsets.only(top:20.0, left: 68.8, right: 68.8),
                child: ElevatedButton(
                  child: Text("Skin"),
                  onPressed: () async => [

                    await skin_hospi.add(
                        {
                          'name' : name,
                          'contact' : contact,
                          'email' : email,
                          'address' : address,
                          'doctors' : doctors
                        }
                    ),
                  ],
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,)


                ),
              ),

              Padding(padding: EdgeInsets.only(top:40.0, left: 48.8, right: 48.8),
                child: ElevatedButton(
                    child: Text("Done"),
                    onPressed: () async => [

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => Success()),
                      )
                    ]

                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}