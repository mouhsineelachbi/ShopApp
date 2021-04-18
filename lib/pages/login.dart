import 'package:ecommerce/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences preferences;
  bool Loading = false;
  bool isLogedin = false;

  @override
  void initState() {
    super.initState();
    isSignIn();
  }

  void isSignIn() async {
    setState(() {
      Loading = true;
    });

    preferences = await SharedPreferences.getInstance();
    isLogedin = await googleSignIn.isSignedIn();

    if(isLogedin) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }

    setState(() {
      Loading = false;
    });

  }
  
  Future signIn() async {

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }




}
