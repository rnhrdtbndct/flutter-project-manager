import 'package:benedictoflutter/services/firestore_db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

//Sign In with Email and Password
Future signIn(String email, String password) async {
  try {
    return await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    print(e.toString());
    return null;
  }
}

//Sign Up New User
Future<void> signUp(
    String name, String email, String password, String profilePicture) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    String userID = userCredential.user!.uid;
    FirestoreDB()
        .usersDB
        .doc(userID)
        .set({'name': name, 'email': email, 'photoURL': profilePicture});
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  } catch (error) {
    // Handle errors here
    print('Error: $error');
  }
}

//Sign In With Google
Future<UserCredential> signInWithGoogle() async {
  // Create a new provider
  GoogleAuthProvider googleProvider = GoogleAuthProvider();

  googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
  googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithPopup(googleProvider);
}

//Sign Out User
Future signOut() async {
  try {
    return await FirebaseAuth.instance.signOut();
  } catch (e) {
    print(e.toString());
    return null;
  }
}
