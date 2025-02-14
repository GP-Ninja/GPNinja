// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth

Future signInWithEmailAndPasswordMFA(
  String? email,
  String? password,
  Future Function()? onSuccess,
  Future Function(String? verificationId, dynamic resolver)? onMFACodeSent,
  Future Function(String? error)? onError,
) async {
  // Ensure email and password are provided
  if (email == null || password == null) {
    onError?.call("Email and password must be provided.");
    return;
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    // Attempt sign-in with email and password
    final userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // If successful and MFA is not required, call onSuccess
    await onSuccess?.call();
  } on FirebaseAuthMultiFactorException catch (e) {
    // MFA is required, handle the multi-factor exception
    final resolver = e.resolver;
    final multiFactorInfo = resolver.hints.first as PhoneMultiFactorInfo;

    // Start the SMS verification process for the second factor
    await _auth.verifyPhoneNumber(
      multiFactorSession: resolver.session,
      multiFactorInfo: multiFactorInfo,
      verificationCompleted: (PhoneAuthCredential credential) {
        // Auto-verification, not typically used in MFA flows
      },
      verificationFailed: (FirebaseAuthException e) {
        onError?.call("Verification failed: ${e.message}");
      },
      codeSent: (String verificationId, int? resendToken) {
        // Store verificationId and resolver in App State
        FFAppState().verificationId = verificationId;
        FFAppState().resolver = resolver;

        // Call onMFACodeSent with verificationId and resolver
        onMFACodeSent?.call(verificationId, resolver);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  } on FirebaseAuthException catch (e) {
    // Handle specific FirebaseAuth errors
    switch (e.code) {
      case 'invalid-email':
        onError?.call("The email address is badly formatted.");
        break;
      case 'user-not-found':
        onError?.call("No user found with this email.");
        break;
      case 'wrong-password':
        onError?.call("The password is incorrect.");
        break;
      case 'user-disabled':
        onError?.call("This user account has been disabled.");
        break;
      default:
        onError?.call(
            "An error occurred: please check your username and password are correct.");
    }
  } catch (e) {
    // Handle any other errors that occur during sign-in
    onError?.call("An unexpected error occurred: ${e.toString()}");
  }
}
