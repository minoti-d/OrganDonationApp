import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdp_organ_donation/Hospital stuff/HospiRegi.dart';
import 'package:sdp_organ_donation/Hospital stuff/ViewWhat.dart';



class HospiHomePage extends StatelessWidget {
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

                      Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                          child: Image.network('https://e7.pngegg.com/pngimages/127/557/png-clipart-hospital-computer-icons-health-care-medicine-hospital-logo-medicine.png')

                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Register!"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => HospiRegi()),
                              );
                            }
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("View Data"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => ViewWhat()),
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