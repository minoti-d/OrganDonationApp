import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sdp_organ_donation/Success.dart';
import 'package:sdp_organ_donation/display_hospi/display_eye_hospi.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Eye extends StatelessWidget{
  CollectionReference eye_donors = FirebaseFirestore.instance.collection('eye_donors');
  late String name, address, dob, contact, kin_contact, kin_name, kin_address, kin_email, relation, bloodgroup;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate()
  {
    if (formkey.currentState!.validate()){
      print("Validated");
    }
    else
    {
      print("Not Validated");
    }
  }

  String? validatepass(value){
    if(value!.isEmpty){
      return "Required";
    }
    else if(value.length < 6){
      return "Should contain atleast 6 characters";
    }
    else{
      return null;
    }
  }

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
                        labelText: 'Full Name*'),
                    validator: validatepass,
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

                        await eye_donors.add(
                        {
                                    'name' : name,
                                    'contact' : contact,
                                      'birthdate' : dob,
                                         'address' : address,
                          'bloodgroup' : bloodgroup,
                                        'kin_name' : kin_name,
                                      'kin_contact' : kin_contact,
                                    'kin_address' : kin_address,
                                          'kin_email' : kin_email,
                                  'rel_to_donor' : relation,
                        }),
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (BuildContext context) => display_eye_hospi()),
                              )
                        ]

                          )

                    ),
                  ),

              ]
          ),
        ),
      ),
    );
  }

}