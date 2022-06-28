import 'package:flutter/material.dart';

import 'Rec_Eye.dart';
import 'Rec_Kidney.dart';
import 'Rec_Liver.dart';
import 'Rec_Skin.dart';
//import './welcome.dart';

class WhichOrgan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Container(
          child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                  child: Text("Select: ",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 38, backgroundColor: Colors.white),
                  ),

                ),
                Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                    child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/000/607/119/small/tujuhh-60.jpg')

                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),

                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.white,
                    child: ElevatedButton(
                        child: Text('Eye'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Rec_Eye()),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                    child: Image.network('https://cdn.dribbble.com/users/103754/screenshots/7499603/dribble-gab-kidney-logo.jpg')

                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),

                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.white,
                    child: ElevatedButton(
                        child: Text('Kidney'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Rec_Kidney()),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                    child: Image.network('https://thumbs.dreamstime.com/b/liver-care-logo-template-vector-liver-icon-flat-logo-liver-icon-human-organ-grey-isolated-sign-white-background-liver-symbol-160479639.jpg')

                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),

                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.white,
                    child: ElevatedButton(
                        child: Text('Liver'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Rec_Liver()),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                    child: Image.network('https://i.pinimg.com/originals/a1/ca/35/a1ca35caefda4532ec52a5a988abbe15.jpg')

                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),

                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.white,
                    child: ElevatedButton(
                        child: Text('Skin'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Rec_Skin()),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,),
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