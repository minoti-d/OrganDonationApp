import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdp_organ_donation/welcome.dart';

import 'main.dart';

class Registered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(
                          top: 48, left: 28.8, right: 28.8),
                          child: Image.network('https://i.pinimg.com/originals/3f/b7/bc/3fb7bc16d7af89847e1627d42cbff7f5.png')
                      ),
                      Padding(padding: EdgeInsets.only(top: 18, left: 28.8),
                        child: Text('You have been succesfully Registered!!',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 38),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 18, left: 28.8),
                        child: Text('Plz go back and Sign-In',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 38),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                        child: ElevatedButton(
                            child: Text("Go Back"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => HomePage()),
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