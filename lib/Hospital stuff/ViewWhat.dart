import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sdp_organ_donation/Hospital stuff/HospiRegi.dart';
import 'package:sdp_organ_donation/display/display_eye.dart';
import 'package:sdp_organ_donation/display/display_kidney.dart';
import 'package:sdp_organ_donation/display/display_liver.dart';
import 'package:sdp_organ_donation/display/display_skin.dart';
import 'package:sdp_organ_donation/display_receiver/dis_eye_rec.dart';
import 'package:sdp_organ_donation/display_receiver/dis_kidney_rec.dart';
import 'package:sdp_organ_donation/display_receiver/dis_liver_rec.dart';
import 'package:sdp_organ_donation/display_receiver/dis_skin_rec.dart';



class ViewWhat extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
        body: SafeArea(
            child: Container(
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[

                      Padding(padding: EdgeInsets.only(top: 18, left: 28.8),
                        child: Text('Donors: ',
                          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, backgroundColor: Colors.white),
                        ),

                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8,),
                        child: ElevatedButton(
                            child: Text("Eye Donors"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => display_eye()),
                              );
                            }
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Kidney Donors"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => display_kidney()),
                              );
                            }
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Liver Donors"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => display_liver()),
                              );
                            }
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Skin Donors"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => display_skin()),
                              );
                            }
                        ),
                      ),

                      Padding(padding: EdgeInsets.only(top: 18, left: 28.8),
                        child: Text('Requested Organs: ',
                          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, backgroundColor: Colors.white),
                        ),

                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Eye"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => dis_eye_rec()),
                              );
                            }
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Kidney"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => dis_kidney_rec()),
                              );
                            }
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Liver"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => dis_liver_rec()),
                              );
                            }
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Skin"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => dis_skin_rec()),
                              );
                            }
                        ),
                      ),






                    ]
                )
            )
        )
    );
  }
}