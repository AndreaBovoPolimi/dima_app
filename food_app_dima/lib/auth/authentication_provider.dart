import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationProvider {
  final FirebaseAuth firebaseAuth;
  //FirebaseAuth instance
  AuthenticationProvider(this.firebaseAuth);
  //Constuctor to initalize the FirebaseAuth instance

  //Using Stream to listen to Authentication State
  Stream<User> get authState => firebaseAuth.idTokenChanges();

  //............RUDIMENTARY METHODS FOR AUTHENTICATION................

  //SIGN UP METHOD
  Future<String> signUp({String email, String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed up!";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN IN METHOD
  Future<String> signIn({String email, String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in!";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    try {
      await firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
    return "Signed in with Google!";
  }

  Future<String> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    try {
      if (result.status == LoginStatus.success) {
        // Create a credential from the access token
        final OAuthCredential credential =
            FacebookAuthProvider.credential(result.accessToken.token);
        // Once signed in, return the UserCredential
        await FirebaseAuth.instance.signInWithCredential(credential);
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
    return "Signed in with Facebook!";
  }

  //SIGN OUT METHOD
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
