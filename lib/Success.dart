import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Success extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[

                      Padding(padding: EdgeInsets.only(top: 18, left: 28.8),
                        child: Text('Succesfully Done!!',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 38),
                        ),

                      ),

                      Padding(padding: EdgeInsets.only(top: 18, left: 28.8),
                        child: Text('Thank you for you support!',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 28),
                        ),

                      ),

                      Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                          child: Image.network('https://cdn6.f-cdn.com/contestentries/1641699/25740930/5daf38662ce10_thumb900.jpg')

                      ),



                    ]
                )
            )
        )
    );
  }
}
