import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdp_organ_donation/display/display_eye.dart';
import 'donationpackage/Give.dart';
import 'receivingpackage/Take.dart';
import 'Hospital stuff/HospiRegi.dart';
//import './Registered.dart';

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
        body: SafeArea(
            //decoration: new BoxDecoration(color: Colors.red),
            child: Container(
              child: ListView(
                physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                        child: Image.network('https://image.shutterstock.com/image-illustration/heart-hand-giving-logo-template-260nw-1238767783.jpg')

                    ),
                    Padding(padding: EdgeInsets.only(top: 18, left: 28.8),
                      child: Text('The measure of life is not its duration, but its donation, so Donate!!',
                        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, backgroundColor: Colors.white),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                      child: ElevatedButton(
                          child: Text('Donate'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (BuildContext context) => Give()),
                            );
                          },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                      child: ElevatedButton(

                          child: Text('Receive'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (BuildContext context) => WhichOrgan()),
                            );
                          },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,),
                      ),
                    ),


                    ]
              ),
            ),
        ),

    );
  }
}
