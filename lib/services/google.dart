import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  GoogleSignIn _signin = GoogleSignIn(scopes: ['email']);

  Future<void> logout() async {
    await _signin.signOut();
    await FirebaseAuth.instance.signOut();
  }

  Future<void> login() async {
    try {
      GoogleSignInAccount account = await _signin.signIn();
      GoogleSignInAuthentication auth = await account.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: auth.accessToken, idToken: auth.idToken);

      FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e);
    }
  }
}