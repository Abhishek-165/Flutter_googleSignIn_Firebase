import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home:MyApp(),debugShowCheckedModeBanner: false,));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();


  _signInWithGoogle() async
  {
    //displays the list of account
    final GoogleSignInAccount googleUser =await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(idToken: googleAuth.idToken,accessToken: googleAuth.accessToken);

    final User user =(await firebaseAuth.signInWithCredential(credential)).user;
  
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: 
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(elevation: 3.0,
           color: Colors.white,
           child: Row(
          children: [
            Image.asset("images/googlelogo.png",width:20.0,height:20.0),
            SizedBox(width: 5.0,),
            Text("Sign in with Google")
          ],
         ),onPressed:_signInWithGoogle,



         ),
      ],
    ),),);
  }
}