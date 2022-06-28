import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sdp_organ_donation/welcome.dart';
import './Registered.dart';
import 'package:sdp_organ_donation/Hospital stuff/HospiHomePage.dart';
import 'package:form_field_validator/form_field_validator.dart';
//import 'package:provider/provider.dart';
//import 'package:sdp_organ_donation/services/auth_services.dart';
//import './welcome.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}



class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

//Login Page
class _HomePageState extends State<HomePage>{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

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
    } else{
      return null;
    }
  }
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
                  child: Image.network('https://i.pinimg.com/originals/d3/83/61/d38361c24db851283fdc4cabe8e0cd8d.jpg')

              ),
              Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                child: Text("Organ Donation",
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 38, backgroundColor: Colors.white),
                ),

              ),
              Padding(padding: EdgeInsets.only(top: 18, left: 28.8),
                child: Text('Login Here',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, backgroundColor: Colors.white),
                ),

              ),
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child:TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                  fillColor: Colors.white,

                      border: OutlineInputBorder(),
                      labelText: 'Email'),
                  validator: MultiValidator(
                      [EmailValidator(errorText: "Not a valid Email"),
                        RequiredValidator(errorText: "Required")]
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child:TextFormField(

                  controller: _passwordController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(),
                      labelText: 'Password'),
                  validator: validatepass,

                ),
              ),
        Padding(
          padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),

              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.white,
                child: ElevatedButton(
                  child: Text('Register'),
                  onPressed: () async {
                    await _firebaseAuth.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((value) => null);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder : (BuildContext context) => Registered(), ), );
                  }
                ),
              ),
        ),
        Padding(
          padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),

          child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.red,
                child: ElevatedButton(
                  child: Text('Sign In!'),
                  onPressed: () async {
                    await _firebaseAuth.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder : (BuildContext context) => welcome(), ), );
                  }
                ),
              )
        ),

              Padding(
                padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                child: ElevatedButton(
                    child: Text('Hospital Login'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => HospiHomePage()),
                      );
                    }
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }

}

class RegisterNow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                    child: Image.network('https://image.shutterstock.com/image-illustration/heart-hand-giving-logo-template-260nw-1238767783.jpg')

                ),
                Padding(padding: EdgeInsets.only(top: 48, left: 28.8),
                  child: Text('Register Now!!',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 38),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Email'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Password'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0, left: 28.8, right: 28.8),
                  child:TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Re-enter Password'),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top:20.0, left: 48.8, right: 48.8),
                  child: ElevatedButton(
                    child: Text("Submit"),
                    onPressed: () {

                    },

                  ),
                ),



              ],

            )
        ),
      ),
    );
  }

}


