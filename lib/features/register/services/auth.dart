// ignore_for_file: prefer_final_fields

import 'package:app_2/features/register/services/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';


class FirebaseAuthService {

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential =await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {

      if (e.code == 'email-already-in-use') {
        showToast(message: 'البريد الإلكتروني مستخدم من قبل');
      } 
    }
    return null;

  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        showToast(message: 'البريد الإلكتروني أو كلمة السر خاطئة');
      }
      // if (e.) {

      // }
      // else {
      //   showToast(message: 'An error occurred: ${e.code}');
      // }

    }
    return null;

  }
}

// class Auth {
//   final _auth = FirebaseAuth.instance;

//   Future<UserCredential> signUp(String email, String password) async {
//     final authResult = await _auth.createUserWithEmailAndPassword(
//         email: email, password: password);

//     return authResult;
//   }

//   Future<UserCredential> signIn(String email, String password) async {
//     final authResult = await _auth.signInWithEmailAndPassword(
//         email: email, password: password);
//     return authResult;
//   }

//   // Future<User> getUser() async {
//   //   return await _auth.currentUser();
//   // }

//   Future<void> signOut() async {
//     await _auth.signOut();
//   }
// }