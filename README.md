# GoogleSignIn

It is just a implementation of google sign in with flutter and firebase

#ScreenShot

<img src="https://github.com/Abhishek-165/Flutter_googleSignIn_Firebase/blob/master/images/googleSIgnIN.jpeg" height="400" width="250" >

# Flutter Dependencies

  1) firebase_auth:
  2) google_sign_in:
  3) firebase_core:
  

# SHA-1/SHA-256 Generate 

keytool -list -v -keystore "C:\Users\Abhishek\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android


# Note:-

Since August 17 2020, All Firebase versions have been updated and now you have to call Firebase.initializeApp() before using any Firebase product.

e.g :-

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp());
}
